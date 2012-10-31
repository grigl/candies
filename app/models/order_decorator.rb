Order.class_eval do

  Order.state_machines.clear 
  # order state machine (see http://github.com/pluginaweek/state_machine/tree/master for details)
  state_machine :initial => 'cart', :use_transactions => false do

    event :next do
      transition :from => 'cart',     :to => 'address'
      transition :from => 'address',  :to => 'payment'
      transition :from => 'confirm',  :to => 'complete'
      # note: some payment methods will not support a confirm step
      # transition :from => 'delivery',  :to => 'confirm',
                                       # :if => Proc.new { Gateway.current && Gateway.current.payment_profiles_supported? }

      transition :from => 'payment', :to => 'confirm'
    end

    event :cancel do
      transition :to => 'canceled', :if => :allow_cancel?
    end
    event :return do
      transition :to => 'returned', :from => 'awaiting_return'
    end
    event :resume do
      transition :to => 'resumed', :from => 'canceled', :if => :allow_resume?
    end
    event :authorize_return do
      transition :to => 'awaiting_return'
    end

    before_transition :to => 'complete' do |order|
      begin
        order.process_payments!
      rescue Spree::GatewayError
        if Spree::Config[:allow_checkout_on_gateway_error]
          true
        else
          false
        end
      end
    end

    after_transition :to => 'complete', :do => :finalize!
    after_transition :to => 'confirm', :do => :create_tax_charge!
    after_transition :to => 'confirm', :do => :create_shipment!
    after_transition :to => 'confirm', :do => :update!
    after_transition :to => 'canceled', :do => :after_cancel

  end

  def add_variant(variant, quantity = 1)
    current_item = contains?(variant)
    if current_item
      current_item.quantity += quantity
      current_item.save
    else
      current_item = LineItem.new(:quantity => quantity)
      current_item.variant = variant
      if variant.product.on_sale?
        current_item.price = variant.product.sale_price
      else
        current_item.price = variant.price
      end
      self.line_items << current_item
    end

    # populate line_items attributes for additional_fields entries
    # that have populate => [:line_item]
    Variant.additional_fields.select{|f| !f[:populate].nil? && f[:populate].include?(:line_item) }.each do |field|
      value = ""

      if field[:only].nil? || field[:only].include?(:variant)
        value = variant.send(field[:name].gsub(" ", "_").downcase)
      elsif field[:only].include?(:product)
        value = variant.product.send(field[:name].gsub(" ", "_").downcase)
      end
      current_item.update_attribute(field[:name].gsub(" ", "_").downcase, value)
    end

    current_item
  end

  def rate_hash
    @rate_hash ||= available_shipping_methods(:front_end).collect do |ship_method|
      next unless cost = ship_method.calculator.compute(self)
      { :id => ship_method.id,
        :shipping_method => ship_method,
        :name => ship_method.name,
        :description => ship_method.description,
        :cost => cost
      }
    end.compact.sort_by{|r| r[:cost]}
  end

  def finalize!
    update_attribute(:completed_at, Time.now)
    self.out_of_stock_items = InventoryUnit.assign_opening_inventory(self)
    # lock any optional adjustments (coupon promotions, etc.)
    adjustments.optional.each { |adjustment| adjustment.update_attribute("locked", true) }
    self.record_shipping_and_payment_methods
    OrderMailer.admin_email(self).deliver

    self.state_events.create({
      :previous_state => "cart",
      :next_state     => "complete",
      :name           => "order" ,
      :user_id        => (User.respond_to?(:current) && User.current.try(:id)) || self.user_id
    })
  end

  def record_shipping_and_payment_methods
    return unless self.shipping_method && self.payment_method

    self.update_attribute(:shipping_method_name, self.shipping_method.name)
    self.update_attribute(:payment_method_name, self.payment_method.name)  
  end

  before_validation :clone_shipping_address, :if => "@use_billing"
  attr_accessor :use_billing

  def clone_billing_address
    true  
  end

  def add_new_address_to_user(user)
    return unless user
    [self.bill_address, self.ship_address].each do |order_address|
      user.reload
      next if user.have_address?(order_address)
      new_user_address = order_address.clone_without_default
      new_user_address.user_id = user.id
      new_user_address.save
    end
  end

  def previous_state
    if state == 'address'
      'cart'
    elsif state == 'payment'
      'address'
    elsif state == 'confirm'
      'payment'
    elsif state == 'complete'
      'confirm'
    else
      nil
    end
  end

  def next_state
    if state == 'cart'
      'address'
    elsif state == 'address'
      'payment'
    elsif state == 'payment'
      'confirm'
    elsif state == 'confirm'
      'complete'
    else
      nil
    end
  end
end

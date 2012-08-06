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

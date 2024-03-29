CheckoutController.class_eval do
  before_filter :load_order, except: [:back, :back_to_address]

  # Updates the order and advances to the next state (when possible.)  
  def update
    if @order.update_attributes(object_params)
      if params[:state] == 'confirm'
        @order.state = 'payment'
        @order.save
      end
      if @order.next
        state_callback(:after)
      else
        # respond_with(@order, :location => checkout_state_path(@order.state))
        respond_with(@order) { |format| format.js { render :update_errors } }
        return
      end

      if @order.state == "complete" || @order.completed?
        # respond_with(@order, :location => completion_route)
        respond_with(@order) { |format| format.js { render :update_checkout } }
      else
        # respond_with(@order, :location => checkout_state_path(@order.state))
        respond_with(@order) { |format| format.js { render :update_checkout } }
      end
    else
      respond_with(@order) { |format| format.js { render :update_errors } }
    end
  end

  def back_to_address
    @order = current_order
    @order.update_attribute(:state, 'address')
    state_callback(:before)
    respond_with(@order) { |format| format.js { render :update_checkout } }
  end

  def update_registration
    if @order.update_attributes(params[:order])
      if @order.next
        state_callback(:after)
      else
        flash[:error] = I18n.t(:payment_processing_failed)
        # respond_with(@order, :location => checkout_state_path(@order.state))
        respond_with(@order) { |format| format.js { render :update_checkout } }
        return
      end
      load_order
      respond_with(@order) { |format| format.js { render :update_checkout } }
    else
      respond_with(@order) { |format| format.js { render :update_errors } }
    end
  end

  def edit
    respond_with(@order) { |format| format.js { render :update_checkout } }
  end

  def back
    @order = current_order
    @order.state = params[:state]
    @order.state = @order.previous_state
    if @order.save
      respond_with(@order) { |format| format.js { render :back_checkout } }
    else
      respond_with(@order) { |format| format.js { render :update_errors } }
    end
  end

  # def update_registration
  #   # hack - temporarily change the state to something other than cart so we can validate the order email address
  #   # current_order.state = "address"
  #   if current_order.update_attributes(params[:order])
  #     load_order
  #     respond_with(@order) { |format| format.js { render :update_checkout } }
  #   else
  #     @user = User.new
  #     respond_with(@order) { |format| format.js { render :update_errors } }
  #   end
  # end
  private

  def completion_route
    order_path(@order)
  end

  def object_params
    # For payment step, filter order parameters to produce the expected nested attributes for a single payment and its source, discarding attributes for payment methods other than the one selected
    if @order.payment?
      if params[:payment_source].present? && source_params = params.delete(:payment_source)[params[:order][:payments_attributes].first[:payment_method_id].underscore]
        params[:order][:payments_attributes].first[:source_attributes] = source_params
      end
      if (params[:order][:payments_attributes])
        params[:order][:payments_attributes].first[:amount] = @order.total
      end
    end
    params[:order]
  end

  def load_order
    @order = current_order
    @order.state = params[:state] if params[:state]
    state_callback(:before) if @order
  end

  def state_callback(before_or_after = :before)
    method_name = :"#{before_or_after}_#{@order.state}"
    send(method_name) if respond_to?(method_name, true)
  end

  def before_address
    if current_user
      @order.bill_address ||= current_user.default_address.clone_wo_default_and_contacts
      @order.bill_address.firstname ||= current_user.firstname
      @order.bill_address.lastname ||= current_user.lastname
      @order.bill_address.phone ||= current_user.phone
      @order.ship_address ||= current_user.default_address.clone_wo_default_and_contacts   
      @order.ship_address.firstname ||= current_user.firstname
      @order.ship_address.lastname ||= current_user.lastname
      @order.ship_address.phone ||= current_user.phone
    else
      @order.bill_address ||= Address.default
      @order.ship_address ||= Address.default
    end
  end

  def before_payment
    return if params[:order].present?
    @order.shipping_method ||= (@order.rate_hash.first && @order.rate_hash.first[:shipping_method])
    current_order.payments.destroy_all if request.put?
  end

  def after_complete
    @order.add_new_address_to_user(current_user)
    session[:order_id] = nil
  end

  def rescue_from_spree_gateway_error
    flash[:error] = t('spree_gateway_error_flash_for_checkout')
    render :edit
  end

  def after_payment
    return
  end

  def after_confirm
    if @order.shipping_method.calculator.is_a?(Calculator::CashOnDelivery)
      @order.payments.build(:payment_method => PaymentMethod.internal, :amount => @order.total)
      @order.confirm_without_payment!
    end
  end

  def redirect_to_robokassa_form_if_needed
    return unless params[:state] == "payment"
    load_order
    payment_method = PaymentMethod.find(params[:order][:payments_attributes].first[:payment_method_id])
    if payment_method.kind_of? Gateway::Robokassa
      @order.update_attributes(object_params)
      @order.save!
      @order.create_shipment!
      @order.update!
      @response_url = gateway_robokassa_path(:gateway_id => payment_method.id, :order_id => @order.id)
      respond_with(@order) { |format| format.js { render :update_robokassa } }
    end

  end

  def normalize_addresses
    return unless params[:state] == "address" && @order.bill_address_id && @order.ship_address_id && params[:email]
    @order.bill_address.reload
    @order.ship_address.reload
    if @order.bill_address_id != @order.ship_address_id && @order.bill_address.same_as?(@order.ship_address)
      @order.bill_address.destroy
      @order.update_attribute(:bill_address_id, @order.ship_address.id)
    else
      @order.bill_address.update_attribute(:user_id, current_user.try(:id))
    end
    @order.ship_address.update_attribute(:user_id, current_user.try(:id))
  end
end

CheckoutController.class_eval do
  # Updates the order and advances to the next state (when possible.)
  def update
    if @order.update_attributes(object_params)
      if @order.next
        state_callback(:after)
      else
        flash[:error] = I18n.t(:payment_processing_failed)
        # respond_with(@order, :location => checkout_state_path(@order.state))
        respond_with(@order) { |format| format.js { render :checkout } }
        return
      end

      if @order.state == "complete" || @order.completed?
        flash[:notice] = I18n.t(:order_processed_successfully)
        flash[:commerce_tracking] = "nothing special"
        # respond_with(@order, :location => completion_route)
        respond_with(@order) { |format| format.js { render :checkout } }
      else
        # respond_with(@order, :location => checkout_state_path(@order.state))
        respond_with(@order) { |format| format.js { render :checkout } }
      end
    else
      respond_with(@order) { |format| format.js { render :update_errors } }
    end
  end

  def edit
    respond_with(@order) { |format| format.js { render :checkout } }
  end

  def load_order
    @order = current_order(true)
    # redirect_to cart_path and return unless @order and @order.checkout_allowed?
    # redirect_to cart_path and return if @order.completed?
    # @order.state = params[:state] if params[:state]
    state_callback(:before)
  end

  def update_registration
    # hack - temporarily change the state to something other than cart so we can validate the order email address
    current_order.state = "address"
    if current_order.update_attributes(params[:order])
      load_order
      respond_with(@order) { |format| format.js { render :checkout } }
    else
      @user = User.new
      respond_with(@order) { |format| format.js { render :update_errors } }
    end
  end

  def before_delivery
    return if params[:order].present?
    @order.shipping_method ||= (@order.rate_hash.first && @order.rate_hash.first[:shipping_method])
    current_order.payments.destroy_all if request.put?
  end

  def object_params
    # For payment step, filter order parameters to produce the expected nested attributes for a single payment and its source, discarding attributes for payment methods other than the one selected
    if @order.delivery?
      if params[:payment_source].present? && source_params = params.delete(:payment_source)[params[:order][:payments_attributes].first[:payment_method_id].underscore]
        params[:order][:payments_attributes].first[:source_attributes] = source_params
      end
      if (params[:order][:payments_attributes])
        params[:order][:payments_attributes].first[:amount] = @order.total
      end
    end
    params[:order]
  end
end

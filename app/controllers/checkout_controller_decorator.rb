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
end

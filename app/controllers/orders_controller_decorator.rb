OrdersController.class_eval do
  respond_to :html

  helper :products

  def show
    @order = Order.find_by_number(params[:id])
  end

  def update
    @order = current_order
    #наглая подмена параметров, чтобы нельзя бы заказать больше
    params[:order]["line_items_attributes"].each do|i, item|
      line_item_id = item["id"].to_i
      line_item_qty = item["quantity"].to_f
      line_item = LineItem.find(line_item_id)
      variant_id = line_item.variant_id
      variant = Variant.find(variant_id)
      if variant.count_on_hand < line_item_qty then
        params[:order]["line_items_attributes"][i]["quantity"] = variant.count_on_hand
      else
        params[:order]["line_items_attributes"][i]["quantity"] = line_item_qty
      end
    end
    ###
    if @order.update_attributes(params[:order])
      @order.update_totals
      @order.line_items = @order.line_items.select {|li| li.quantity > 0 }
      if @order.line_items.empty?
        @order.destroy
        render :update_cart
      else
        unless @order.state == 'cart'
          @order.state = 'cart'
          @order.save
        end
        respond_with(@order) { |format| format.js { render :update_cart } }
      end
    else
      respond_with(@order) 
    end
  end

  # Shows the current incomplete order from the session
  def edit
    @order = current_order(true)
  end

  # Adds a new item to the order (creating a new order if none already exists)
  #
  # Parameters can be passed using the following possible parameter configurations:
  #
  # * Single variant/quantity pairing
  # +:variants => {variant_id => quantity}+
  #
  # * Multiple products at once
  # +:products => {product_id => variant_id, product_id => variant_id}, :quantity => quantity +
  # +:products => {product_id => variant_id, product_id => variant_id}}, :quantity => {variant_id => quantity, variant_id => quantity}+
  def populate
    @order = current_order(true)

    params[:products].each do |product_id,variant_id|
      quantity = params[:quantity].to_i if !params[:quantity].is_a?(Hash)
      quantity = params[:quantity][variant_id].to_i if params[:quantity].is_a?(Hash)
      @order.add_variant(Variant.find(variant_id), quantity) if quantity > 0
    end if params[:products]

    params[:variants].each do |variant_id, quantity|
      quantity = quantity.to_i
      @order.add_variant(Variant.find(variant_id), quantity) if quantity > 0
    end if params[:variants]

    @order.update_totals
    @previous_state = @order.state
    if @order.state != 'cart'
      @order.state = 'cart'
      @order.save
      respond_with(@order) { |format| format.js { render :update_and_show_cart } }
    else
      respond_with(@order) { |format| format.js { render :update_cart } }
    end
  end

  def empty
    if @order = current_order
      @order.line_items.destroy_all
    end
    
    respond_with(@order) { |format| format.js { render :update_cart } }
  end

  def accurate_title
    @order && @order.completed? ? "#{Order.human_name} #{@order.number}" : I18n.t(:shopping_cart)
  end
end

# encoding: utf-8

ProductsController.class_eval do
  before_filter :load_order

  HTTP_REFERER_REGEXP = /^https?:\/\/[^\/]+\/t\/([a-z0-9\-\/]+)$/
  
  def index
    @product_group = nil
    if params.has_key?("product_group_name") then
      product_group_name = params["product_group_name"]
      @product_group = ProductGroup.where('permalink = ?', product_group_name)[0]
      all_products = @product_group.products      
    end
    
    #такой странный и запутанный этот spree
    all_products_by_gender = {"male" => [], "female" => []}
    all_products.each do|product|
      if product.gender == 0 or product.gender == 1 then
        all_products_by_gender["male"].push(product)
      end
      if product.gender == 0 or product.gender == 2 then
        all_products_by_gender["female"].push(product)
      end
    end
    
    @products = all_products_by_gender[params["gender"]]
    respond_with(@products)
  end

  private

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
    @order.bill_address ||= Address.default
    @order.ship_address ||= Address.default
  end

  def before_delivery
    return if params[:order].present?
    @order.shipping_method ||= (@order.rate_hash.first && @order.rate_hash.first[:shipping_method])
    current_order.payments.destroy_all if request.put?
  end

  def after_complete
    session[:order_id] = nil
  
  def show
    @product = Product.find_by_permalink!(params[:id])
    return unless @product

    @variants = Variant.active.includes([:option_values, :images]).where(:product_id => @product.id)
    @product_properties = ProductProperty.includes(:property).where(:product_id => @product.id)
    @selected_variant = @variants.detect { |v| v.available? }

    referer = request.env['HTTP_REFERER']

    if referer && referer.match(HTTP_REFERER_REGEXP)
      @taxon = Taxon.find_by_permalink($1)
    end

    @next_products = Product.limit(3)
    respond_with(@product)
  end 
  
  def search
    @searcher = Spree::Config.searcher_class.new(params)
    @products = @searcher.retrieve_products
    respond_with(@products)
  end
end
# encoding: utf-8

ProductsController.class_eval do
  before_filter :load_order

  HTTP_REFERER_REGEXP = /^https?:\/\/[^\/]+\/t\/([a-z0-9\-\/]+)$/
  
  def index
    @product_group = nil
    if params.has_key?("product_group_name") then
      product_group_name = params["product_group_name"]
      @product_group = ProductGroup.where('permalink = ?', product_group_name)[0]
      if @product_group.nil? then
        render_404 and return
      end
      all_products = Product.joins(:product_groups).where('product_groups.id' => @product_group.id).joins(:variants).group(:id)
    else
      render_404 and return
    end
    
    #такой странный и запутанный этот spree
    if params["gender"] != "male" and params["gender"] != "female" then
      render_404 and return
    end
    all_products_by_gender = {"male" => [], "female" => []}
    all_products.each do|product|
      if product.gender == 0 or product.gender == 1 then
        all_products_by_gender["male"].push(product)
      end
      if product.gender == 0 or product.gender == 2 then
        all_products_by_gender["female"].push(product)
      end
    end
    
    if params.has_key?("page") then
      @page = params["page"].to_i
    else
      @page = 1
    end    
    @products_count = all_products_by_gender[params["gender"]].size.to_f
    first = (@page - 1) * 28
    if first > @products_count.to_i or @page <= 0 then
      render_404 and return
    end
    @last_page = (@products_count / 28).ceil
    @products = all_products_by_gender[params["gender"]].slice(first, 28)
    respond_with(@products)
  end

  def show
    @product = Product.find_by_permalink!(params[:id])
    return unless @product
    if @product.variants.empty? then
      render_404 and return
    end

    @variants = Variant.active.includes([:option_values, :images]).where(:product_id => @product.id)
    @product_properties = ProductProperty.includes(:property).where(:product_id => @product.id)
    @selected_variant = @variants.detect { |v| v.available? }

    referer = request.env['HTTP_REFERER']

    if referer && referer.match(HTTP_REFERER_REGEXP)
      @taxon = Taxon.find_by_permalink($1)
    end

    relations = @product.relations.limit(3)
    @next_products = []
    relations.each do|relation|
      @next_products.push Product.find(relation.related_to_id)
    end
    respond_with(@product)
  end 
  
  def search
    # @searcher = Spree::Config.searcher_class.new(params)
    # @products = @searcher.retrieve_products
    get_products = Product.find(:all, :conditions => ['name LIKE ?', "%#{params[:keywords]}%"])
    
    @products = []
    for get_product in get_products do
      if get_product.variants.empty? == false then
        @products.push(get_product)
      end
    end    
    
    if params.has_key?("page") then
      @page = params["page"].to_i
    else
      @page = 1
    end    
    @products_count = @products.size.to_f
    first = (@page - 1) * 28
    if first > @products_count.to_i or @page <= 0 then
      render_404 and return
    end    
    @last_page = (@products_count / 28).ceil
    @products = @products.slice(first, 28)
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

  def before_delivery
    return if params[:order].present?
    @order.shipping_method ||= (@order.rate_hash.first && @order.rate_hash.first[:shipping_method])
    current_order.payments.destroy_all if request.put?
  end

  def after_complete
    session[:order_id] = nil
  end  
end
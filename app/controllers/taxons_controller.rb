class TaxonsController < Spree::BaseController
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404
  helper :products
  before_filter :load_order

  respond_to :html

  def show
    all_collection_id = 5 #грязный грязный хак
    
    @taxon = Taxon.find_by_permalink!(params[:id])
    return unless @taxon

    if @taxon.id == all_collection_id then
      all_products = Product.all
    else
      @searcher = Spree::Config.searcher_class.new(params.merge(:taxon => @taxon.id)) 
      all_products = @searcher.retrieve_products 
    end
    
    all_products_by_gender = {"male" => [], "female" => []}
    all_products.each do|product|
      puts product.gender
      if product.gender == 0 or product.gender == 1 then
        all_products_by_gender["male"].push product
      end
      if product.gender == 0 or product.gender == 2 then
        all_products_by_gender["female"].push product
      end
    end

    if params.has_key?("page") then
      @page = params["page"].to_i
    else
      @page = 1
    end    
    @products_count = all_products_by_gender[params["gender"]].count
    first = (@page-1) * 14
    last = first + 14
    if last > @products_count then
      last = @products_count
    end
    @last_page = (@products_count / 14).ceil
    @products = all_products_by_gender[params["gender"]].slice(first, last)
    respond_with(@taxon)
  end

  private

  def accurate_title
    @taxon ? @taxon.name : super
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

  def before_delivery
    return if params[:order].present?
    @order.shipping_method ||= (@order.rate_hash.first && @order.rate_hash.first[:shipping_method])
    current_order.payments.destroy_all if request.put?
  end

  def after_complete
    session[:order_id] = nil
  end
end

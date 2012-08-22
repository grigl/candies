class HomeController < Spree::BaseController
  helper :products, :taxons
  before_filter :load_order

  def index   
    all_products = Product.where('on_index = 1')
    
    #такой странный и запутанный этот spree
    all_products_by_gender = {"male" => [], "female" => []}
    cnt_male = 0
    cnt_female = 0
    all_products.each do|product|
      if (product.gender == 0 or product.gender == 1) and (cnt_male < 3) then
        all_products_by_gender["male"].push(product)
        cnt_male+=1
      end
      if (product.gender == 0 or product.gender == 2) and (cnt_male < 3) then
        all_products_by_gender["female"].push(product)
        cnt_female+=1
      end
    end
    @products = all_products_by_gender
  end

  def about
    all_products = Product.all
    
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
    @products = all_products_by_gender
  end

  def show_personal_page
    respond_to do |format|
      format.js 
    end
  end

  def show_about_page
    respond_to do |format|
      format.js 
    end
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

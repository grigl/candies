class HomeController < Spree::BaseController
  helper :products, :taxons

  def index
    @searcher = Spree::Config.searcher_class.new(params)
    @products = @searcher.retrieve_products

    load_order
  end

  def state_callback(before_or_after = :before)
    method_name = :"#{before_or_after}_#{@order.state}"
    send(method_name) if respond_to?(method_name, true)
  end

  def load_order
    @order = current_order(true)
    # redirect_to cart_path and return unless @order and @order.checkout_allowed?
    # redirect_to cart_path and return if @order.completed?
    # @order.state = params[:state] if params[:state]
    state_callback(:before)
  end

  def before_address
    @order.bill_address ||= Address.default
    @order.ship_address ||= Address.default
  end

  # def before_delivery
  #   return if params[:order].present?
  #   @order.shipping_method ||= (@order.rate_hash.first && @order.rate_hash.first[:shipping_method])
  # end

  # def before_payment
  #   current_order.payments.destroy_all if request.put?
  # end

  def before_delivery
    return if params[:order].present?
    @order.shipping_method ||= (@order.rate_hash.first && @order.rate_hash.first[:shipping_method])
    current_order.payments.destroy_all if request.put?
  end
end

class HomeController < Spree::BaseController
  helper :products, :taxons

  def index
    @searcher = Spree::Config.searcher_class.new(params)
    @products = @searcher.retrieve_products

    @order = current_order
  end
end

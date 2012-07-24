class HomeController < Spree::BaseController
  helper :products, :taxons

  def index
    @collections = Taxonomy.find(1).root.children
    @brands = Taxonomy.find(2).root.children

    @searcher = Spree::Config.searcher_class.new(params)
    @products = @searcher.retrieve_products

    @order = current_order
  end
end

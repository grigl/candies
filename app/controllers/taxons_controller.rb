class TaxonsController < Spree::BaseController
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404
  helper :products

  respond_to :html

  def show
    @taxon = Taxon.find_by_permalink!(params[:id])
    return unless @taxon

    @searcher = Spree::Config.searcher_class.new(params.merge(:taxon => @taxon.id))
    all_products = @searcher.retrieve_products

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
    respond_with(@taxon)
  end

  private

  def accurate_title
    @taxon ? @taxon.name : super
  end
end

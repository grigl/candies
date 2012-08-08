class TaxonsController < Spree::BaseController
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404
  helper :products

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

    @products = all_products_by_gender[params["gender"]]
    respond_with(@taxon)
  end

  private

  def accurate_title
    @taxon ? @taxon.name : super
  end
end

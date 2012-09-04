class UpdateCommentController < Spree::BaseController
  def index
    @order = current_order
    @order.special_instructions = params["order"]["special_instructions"]
    @order.save
    
    render :text => "OK"
  end  
end

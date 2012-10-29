class UpdateCommentController < Spree::BaseController
  def index
    @order = current_order
    @order.special_instructions = params["order"]["special_instructions"]
    @order.state = 'payment'
    @order.save
    
    render :text => "OK"
  end  
end

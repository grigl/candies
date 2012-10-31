Admin::OrdersController.class_eval do
  before_filter :load_order, :only => [:fire, :resend, :history, :user, :work]
  
  def work
    load_order
    @order.is_working = true
    @order.save()
    OrderMailer.confirm_email(@order).deliver
    redirect_to :action => 'index'
  end  
end
class Gateway::RobokassaController < Spree::BaseController
  skip_before_filter :verify_authenticity_token, :only => [:result, :success, :fail]
  before_filter :load_order,                     :only => [:result, :success, :fail]
  ssl_required :show
  layout false
  
  def show
    @order =  Order.find(params[:order_id])
    @order.state = "confirm"
    @order.save
    @gateway = @order.available_payment_methods.find{|x| x.id == params[:gateway_id].to_i }

    if @order.blank? || @gateway.blank?
      flash[:error] = I18n.t("invalid_arguments")
      redirect_to :back
    else
      @signature =  Digest::MD5.hexdigest([ @gateway.options[:mrch_login],
                                            @order.total, @order.id, @gateway.options[:password1]
                                          ].join(':')).upcase
      render :action => :show
    end
  end

  def result
    if @order && @gateway && valid_signature?(@gateway.options[:password2])
      payment = @order.payments.build(:payment_method => @order.payment_method)
      payment.state = "completed"
      payment.amount = params["OutSum"].to_f
      payment.save
      @order.save!
      @order.state = "complete"
      @order.finalize!
      @order.update!
      
      render :text => "OK#{@order.id}"
    else
      render :text => "Invalid Signature"
    end
  end

  def success
    if @order && @gateway && valid_signature?(@gateway.options[:password1]) && @order.complete?
      session[:order_id] = nil
      #redirect_to order_path(@order) + "?scroll=true", :notice => I18n.t("payment_success")
      flash[:order_complete] = true
      redirect_to root_url + "?scroll=true"
    else
      flash[:error] =  t("payment_fail")
      redirect_to root_url + "?scroll=true"
    end
  end

  def fail
    flash[:order_fail] = true
    flash[:error] = t("payment_fail")
    @order.state = "cart"
    @order.save
    redirect_to root_url + "?scroll=true"
  end

  private

  def load_order
    @order = Order.find_by_id(params["InvId"])
    @gateway = Gateway::Robokassa.current
  end

  def valid_signature?(key)
    params["SignatureValue"].upcase == Digest::MD5.hexdigest([params["OutSum"], params["InvId"], key ].join(':')).upcase
  end

end

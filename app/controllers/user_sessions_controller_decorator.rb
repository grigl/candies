UserSessionsController.class_eval do
  def create
    authenticate_user!


    if user_signed_in?
      if current_order
        @order = current_order
        respond_with(@order) { |format| format.js { render 'orders/update_and_show_cart' } }
      else
        respond_to do |format|
          format.html {
            flash[:notice] = I18n.t("logged_in_succesfully")
            redirect_back_or_default(products_path)
          }
          format.js { render :show_accaunt_page }
        end
      end
    else
      @errors = { :email => ['wrong email or password'], :password => ['wrong email or password']}
      respond_with(@errors) { |format| format.js { render :show_login_errors } }
    end
  end
end
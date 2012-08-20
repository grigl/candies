UserSessionsController.class_eval do
  def create
    authenticate_user!

    if user_signed_in?
      if current_order
        @order = current_order
        respond_to do |format|
          format.js { render js: "window.location = '#{root_url scroll: true}';" }  
        end
      else
        respond_to do |format|
          format.html {
            flash[:notice] = I18n.t("logged_in_succesfully")
            redirect_back_or_default(products_path)
          }
          format.js { render js: "window.location = '#{root_url scroll: true}';" }
        end
      end
    else
      @errors = { :email => [I18n.t("wrong_login")], :password => [I18n.t("wrong_login")]}
      respond_with(@errors) { |format| format.js { render :show_login_errors } }
    end
  end
end
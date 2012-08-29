Spree::BaseController.class_eval do
  private
  # Redirect as appropriate when an access request fails.  The default action is to redirect to the login screen.
  # Override this method in your controllers if you want to have special behavior in case the user is not authorized
  # to access the requested action.  For example, a popup window might simply close itself.
  def unauthorized
    respond_to do |format|
      format.html do
        if current_user
          flash.now[:error] = I18n.t(:authorization_failure)
          render 'shared/unauthorized', :layout => 'spree_application'
        else
          flash[:error] = I18n.t(:authorization_failure)
          store_location
          redirect_to login_path + "?from_admin=true" and return
        end
      end
      format.xml do
        request_http_basic_authentication 'Web Password'
      end
      format.json do
        render :text => "Not Authorized \n", :status => 401
      end
    end
  end
end

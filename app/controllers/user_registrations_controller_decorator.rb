UserRegistrationsController.class_eval do
  include SpreeBase
  helper :users, 'spree/base'

  ssl_required
  after_filter :associate_user, :only => :create
  before_filter :check_permissions, :only => [:edit, :update]
  skip_before_filter :require_no_authentication

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource/sign_up
  def create
    @user = build_resource(params[:user])
    @address = @user.addresses.build(params[:user][:address])
    if @user.save
      set_flash_message(:notice, :signed_up)
      sign_in(:user, @user)
      if user_signed_in?
        associate_user
        if current_order
          @order = current_order
          respond_with(@order) { |format| format.js { render 'orders/update_and_show_cart' } }
        else
          respond_to do |format|
            format.js { render 'user_sessions/show_accaunt_page' }
          end
        end
      end
    else
      clean_up_passwords(resource)
      render :registration_errors
    end
  end

  # PUT /resource
  def update
    @user = resource

    if @user.update_attributes(params[:user])
      set_flash_message :notice, :updated if is_navigational_format?
      sign_in resource_name, resource, :bypass => true
      render :reload_accaunt_page
    else
      clean_up_passwords(resource)
      render :show_accaunt_edit_errors
    end

  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  protected

  def check_permissions
    authorize!(:create, resource)
  end

  def associate_user
    return unless current_user and current_order
    current_order.associate_user!(current_user)
    session[:guest_token] = nil
  end

end

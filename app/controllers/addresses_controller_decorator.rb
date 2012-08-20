AddressesController.class_eval do
  def new_user_address
    @user = current_user
    @address = @user.addresses.build(params[:address])

    if params[:address][:default] == true
      @user.default_address.update_attribute(:default, false)
      @address.default = true
     end

    if @user.save
      render 'user_registrations/reload_accaunt_page'
    else
      render :show_new_address_errors
    end
  end

  def edit
    render :show_edit_address_form
  end

  def update
    if @address.update_attributes(params[:address])
      render 'user_registrations/reload_accaunt_page'
    else
      render :show_edit_address_errors
    end
  end

  def destroy
    if @address.can_be_deleted?
      @address.destroy
    else
      @address.update_attribute(:user_id, nil)
    end
    render 'user_registrations/reload_accaunt_page'
  end

  def make_default
    @address = Address.find(params[:address][:id])
    current_user.default_address.update_attribute(:default, nil)
    @address.update_attribute(:default, true)
    render 'user_registrations/reload_accaunt_page'
  end
end
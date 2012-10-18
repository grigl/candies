# encoding: utf-8
UserPasswordsController.class_eval do
  layout :resolve_layout
  
  def create
    self.resource = resource_class.send_reset_password_instructions(params[resource_name])

    if resource.errors.empty?
      @success = true
    else
      if resource.errors.full_messages.join('').include?('не может быть пустым')
        @error = 'Вы не ввели адрес электронной почты'
      else
        @error = 'Не верный адрес электронной почты'
      end
      @success = false
    end    
  end  
  
  # PUT /resource/password
  def update
    self.resource = resource_class.reset_password_by_token(params[resource_name]) 
  
    if resource.errors.empty?
      set_flash_message(:notice, :updated) if is_navigational_format?
      sign_in(resource_name, resource)
      respond_with resource, :location => redirect_location(resource_name, resource)
    else
      respond_with_navigational(resource){ render_with_scope :edit }
    end
  end  
  
  def resolve_layout
    case action_name
    when "edit", "update"
      "spree_application"
    else
      false
    end
  end  
end
UserPasswordsController.class_eval do
  layout nil
  
  def create
    self.resource = resource_class.send_reset_password_instructions(params[resource_name])

    if resource.errors.empty?
      @success = true
    else
      @success = false
    end    
  end  
  
end
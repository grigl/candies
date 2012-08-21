UserPasswordsController.class_eval do
  layout :resolve_layout
  
  def create
    self.resource = resource_class.send_reset_password_instructions(params[resource_name])

    if resource.errors.empty?
      @success = true
    else
      @success = false
    end    
  end  
  
  def resolve_layout
    case action_name
    when "edit"
      "spree_application"
    else
      false
    end
  end  
end
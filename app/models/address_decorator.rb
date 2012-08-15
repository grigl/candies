Address.class_eval do
  def clone_without_default
    Address.new(self.attributes.except("id", "updated_at", "created_at", "default"))
  end
end
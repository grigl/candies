Address.class_eval do
  def clone_without_default
    Address.new(self.attributes.except("id", "updated_at", "created_at", "default"))
  end

  named_scope :without_address, lambda{|address| address ? {:conditions => ["id != ?", address.id]} : {} }
end
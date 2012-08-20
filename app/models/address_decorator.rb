Address.class_eval do
  def clone_without_default
    Address.new(self.attributes.except("id", "updated_at", "created_at", "default"))
  end

  def clone_wo_default_and_contacts
    Address.new(self.attributes.except("id", "updated_at", "created_at", "default", 'firstname', 'lastname', 'phone'))
  end

  def same_as_without_contacts?(other)
    return false if other.nil?
    attributes.except("id", "updated_at", "created_at", "default", 'firstname', 'lastname', 'phone') ==  other.attributes.except("id", "updated_at", "created_at", "default", 'firstname', 'lastname', 'phone')
  end

  named_scope :without_address, lambda{|address| address ? {:conditions => ["id != ?", address.id]} : {} }
end
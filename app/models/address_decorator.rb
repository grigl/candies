Address.class_eval do
  def clone_without_default
    Address.new(self.attributes.except("id", "updated_at", "created_at", "default"))
  end

  def clone_wo_default_and_contacts
    Address.new(self.attributes.except("id", "updated_at", "created_at", "default", 'firstname', 'lastname', 'phone'))
  end

  def same_as_without_contacts?(other)
    return false if other.nil?
    attributes.except("id", "updated_at", "created_at", "default", 'firstname', 'lastname', 'secondname', 'phone', 'user_id') ==  other.attributes.except("id", "updated_at", "created_at", "default", 'firstname', 'lastname', 'secondname', 'phone', 'user_id')
  end

  def to_s
    if default == true
      "#{I18n.t :default_address_label} #{zipcode}, #{country}, #{state || state_name}, #{city}, #{address1}"
    else
      "#{zipcode}, #{country}, #{state || state_name}, #{city}, #{address1}"
    end
  end

  named_scope :without_address, lambda{|address| address ? {:conditions => ["id != ?", address.id]} : {} }
end
User.class_eval do
  accepts_nested_attributes_for :addresses
  attr_accessible :addresses_attributes
  def default_address
    addresses.where(default: true).first
  end
end
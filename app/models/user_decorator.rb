User.class_eval do
  accepts_nested_attributes_for :addresses
  attr_accessible :addresses_attributes, :lastname, :firstname, :phone

  validates :firstname, :lastname, :phone, :presence => true

  def default_address
    addresses.where(default: true).first
  end

  def have_address(address)
    result = []
    self.addresses.each do |user_address|
      result << user_address if user_address.same_as?(address)
    end
    !result.empty?
  end
end
ProductGroup.class_eval do
  has_attached_file :icon,
              :styles => { :normal => '70x70>' },
              :default_style => :normal,
              :url => "/assets/product_group/:id/:style/:basename.:extension",
              :path => ":rails_root/public/assets/product_group/:id/:style/:basename.:extension",
              :default_url => "/images/noimage/product.jpg"
              
  def update_memberships
  end              
end
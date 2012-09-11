Image.class_eval do
	has_attached_file :attachment,
                    :styles => { :mini => '48x48>', :small => '100x100>', :product => '128x94>', :large => '416x305>' },
                    :default_style => :product,
                    :url => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
end
class AddDescriptionToShippingMethod < ActiveRecord::Migration
  def self.up
    add_column :shipping_methods, :description, :text
  end

  def self.down
    remove_column :shipping_methods, :description
  end
end

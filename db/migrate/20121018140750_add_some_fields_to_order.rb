class AddSomeFieldsToOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :shipping_method_name, :string
    add_column :orders, :payment_method_name, :string
  end

  def self.down
    remove_column :orders, :shipping_method_name
    remove_column :orders, :payment_method_name
  end
end

class AddOrdersFields < ActiveRecord::Migration
  def self.up
    add_column :orders, :is_working, :bool
    add_column :orders, :is_sync, :bool
  end

  def self.down
    remove_column :orders, :is_working
    remove_column :orders, :is_sync    
  end
end

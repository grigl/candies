class AddOnIndexProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :on_index, :boolean
  end

  def self.down
    remove_column :products, :on_index
  end
end

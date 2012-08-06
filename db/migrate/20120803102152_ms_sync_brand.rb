class MsSyncBrand < ActiveRecord::Migration
  def self.up
    add_column :product_groups, :ms_id, :string
  end

  def self.down
    remove_column :product_groups, :ms_id
  end
end

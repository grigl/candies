class MsSyncRemains < ActiveRecord::Migration
  def self.up
    add_column :variants, :ms_good_id, :string
  end

  def self.down
    remove_column :variants, :ms_good_id
  end
end

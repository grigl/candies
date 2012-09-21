class AddSalePriceToVariants < ActiveRecord::Migration
  def self.up
    add_column :variants, :sale_price, :decimal
  end

  def self.down
    remove_column :variants, :sale_price, :decimal
  end
end

class MsSync < ActiveRecord::Migration
  def self.up
    add_column :products, :gender, :integer #0 - унисекс, 1 - мужская одежда, 2 - женская
    add_column :products, :ms_sku, :string # артикул, по нему проверяется уникальность товара
    add_column :option_values, :ms_id, :string # id значения опции для уникальности
  end

  def self.down
    remove_column :products, :gender
    remove_column :products, :ms_sku
    remove_column :option_values, :ms_id    
  end
end

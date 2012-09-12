class AddSomeFieldsToPage < ActiveRecord::Migration
  def self.up
  	add_column :pages, :body2, :text
  	add_column :pages, :body3, :text
  	add_column :pages, :phone, :string
  	add_column :pages, :address, :text
  end

  def self.down
  	remove_column :pages, :body2
  	remove_column :pages, :body3
  	remove_column :pages, :phone
  	remove_column :pages, :address
  end
end

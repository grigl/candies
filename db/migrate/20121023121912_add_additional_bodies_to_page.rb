class AddAdditionalBodiesToPage < ActiveRecord::Migration
  def self.up
    add_column :pages, :body4, :text
    add_column :pages, :body5, :text
  end

  def self.down
    remove_column :pages, :body4
    remove_column :pages, :body5
  end
end

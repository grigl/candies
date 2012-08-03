# encoding: utf-8

#some requires
require 'rest_client'
require 'xmlsimple'

#global vars
rest_url = "https://online.moysklad.ru/exchange/rest/stock/xml"

rest_user = "admin@devilmaydie"
rest_pass = "f9ca1808ba"

#folders...
root_folder = '1CANDIES' #название корневого каталога магазина
male_folder = '2Man' #название "мужского" каталога
female_folder = '3Women' #название "жеского" каталога

warehouse_id = "0WUXbhnsjAiKQMf-QZ3Th3" #id склада

namespace :sync do
  desc "Sync remains"
  task :remains => :environment do
    rest_url = rest_url + '?storeId=' + warehouse_id
    response = RestClient::Request.new(:method => :get, :url => rest_url, :user => rest_user, :password => rest_pass, :headers => { :content_type => :xml }).execute
    if response.code != 200 then
      puts "Error fetching remains"
      puts "Answer: " + response.to_str
      return
    end
    xml = response.to_str
    config = XmlSimple.xml_in(xml)
    config["stockTO"].each do|remains|
      good_id = remains["goodRef"][0]["id"]
      quantity = remains["quantity"]
      variants = Variant.where('ms_good_id = ?', good_id)
      variants.each do|variant|
        variant.count_on_hand = quantity.to_i
        variant.save
      end
    end
        
  end
end
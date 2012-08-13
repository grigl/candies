# encoding: utf-8

#some requires
require 'rest_client'
require 'xmlsimple'

#global vars
rest_url = "https://online.moysklad.ru/exchange/rest/stock/xml"
cons_rest_url = "https://online.moysklad.ru/exchange/rest/ms/xml/Consignment/list" #серии

rest_user = "admin@devilmaydie"
rest_pass = "f9ca1808ba"

#folders...
root_folder = '1CANDIES' #название корневого каталога магазина
male_folder = '2Man' #название "мужского" каталога
female_folder = '3Women' #название "жеского" каталога

warehouse_id = "0WUXbhnsjAiKQMf-QZ3Th3" #id склада

#чтобы получить эти id нужно будет сделать запрос сначала и вывести сам xml. Лучше бы подобные данные выводили в веб-морде
option_size_metadata_id = "o037ulinis2iueO23YZ3O1" #id типа опций "размер"
option_color_metadata_id = "b2Ivdtt2gquzhvTBj-3Xy3" #id типа опций "цвет"
main_rest_url = "https://online.moysklad.ru/exchange/rest/ms/xml"
size_url = main_rest_url + "/CustomEntity/list"

namespace :sync do
  desc "Sync remains"
  task :remains => :environment do
    #характеристики
    puts "Getting custom fields..."   
    good_values_size = {}
    good_values_color = {}
    response = RestClient::Request.new(:method => :get, :url => size_url, :user => rest_user, :password => rest_pass, :headers => { :content_type => :xml }).execute
    if response.code != 200 then
      puts "Error fetching sizes"
      puts "Answer: " + response.to_str
      return
    end
    xml = response.to_str
    config = XmlSimple.xml_in(xml)
    #puts config #конфиг нужно будет вывести, чтобы определить все *_metadata_id
    #return
    config['customEntity'].each do|custom_entity|
      value_name = custom_entity['name']
      value_id = custom_entity['id'][0]
      metadata_id = custom_entity["entityMetadataId"]
      value_object = OptionValue.where("ms_id = ?", value_id).limit(1)
      if value_object.empty? then
        value_object = OptionValue.new
        if metadata_id == option_size_metadata_id then
          value_object.option_type_id = option_size_id
        end 
        if metadata_id == option_color_metadata_id then
          value_object.option_type_id = option_color_id
        end 
        value_object.name = value_name
        value_object.presentation = value_name
        value_object.ms_id = value_id
        value_object.save
      else
        value_object = value_object[0]
      end
      if metadata_id == option_size_metadata_id then
        good_values_size[value_id] = value_object.id
      end 
      if metadata_id == option_color_metadata_id then
        good_values_color[value_id] = value_object.id
      end 
    end    
    
    #серии  
    response = RestClient::Request.new(:method => :get, :url => cons_rest_url, :user => rest_user, :password => rest_pass, :headers => { :content_type => :xml }).execute
    if response.code != 200 then
      puts "Error fetching remains"
      puts "Answer: " + response.to_str
      return
    end
    xml = response.to_str
    config = XmlSimple.xml_in(xml)
    config["consignment"].each do|cons|
      cons_id = cons["id"][0]
      size_id = 0
      color_id = 0
      good_id = cons["goodId"]
      product = Product.where('ms_sku = ?', good_id)[0]
      if cons.has_key? "feature" then
        feature = cons["feature"][0]
        if feature.has_key?("attribute") then
          feature["attribute"].each do|attribute|
            value_id = attribute["entityValueId"]
            if good_values_size.has_key?(value_id) then
              size_id = good_values_size[value_id]
            end
            if good_values_color.has_key?(value_id) then
              color_id = good_values_color[value_id]
            end
          end        
        end
      end        
        
      if size_id != 0 and color_id != 0 then
        variant = Variant.where('ms_good_id = ? AND is_master = 0', cons_id)
        if variant.empty? then
          found_variant = Variant.new
          found_variant.product_id = product.id
          found_variant.price = product.price
          found_variant.is_master = 0
          found_variant.sku = product.sku
          found_variant.option_values << OptionValue.find(size_id)
          found_variant.option_values << OptionValue.find(color_id)
          found_variant.ms_good_id = cons_id
          found_variant.save          
        end 
      end        
    end
    
    rest_url = rest_url + '?storeId=' + warehouse_id + '&showConsignments=true'
    response = RestClient::Request.new(:method => :get, :url => rest_url, :user => rest_user, :password => rest_pass, :headers => { :content_type => :xml }).execute
    if response.code != 200 then
      puts "Error fetching remains"
      puts "Answer: " + response.to_str
      return
    end
    xml = response.to_str
    config = XmlSimple.xml_in(xml)
    config["stockTO"].each do|remains|
      cons_id = remains["consignmentID"]
      #good_id = remains["goodRef"][0]["id"]
      quantity = remains["quantity"]
      variants = Variant.where('ms_good_id = ?', cons_id)
      variants.each do|variant|
        variant.count_on_hand = quantity.to_i
        variant.save
      end
    end
        
  end
end
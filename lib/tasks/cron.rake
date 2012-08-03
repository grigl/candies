# encoding: utf-8

#some requires
require 'rest_client'
require 'xmlsimple'

#global vars
rest_url = "https://online.moysklad.ru/exchange/rest/ms/xml"
good_folder_url = rest_url + "/GoodFolder/list"
good_url = rest_url + "/Good/list"
size_url = rest_url + "/CustomEntity/list"

#для опций
#эти id из базы данных
option_size_id = 1
option_color_id = 2

#чтобы получить эти id нужно будет сделать запрос сначала и вывести сам xml. Лучше бы подобные данные выводили в веб-морде
option_size_metadata_id = "b2Ivdtt2gquzhvTBj-3Xy3" #id типа опций "размер"
option_color_metadata_id = "o037ulinis2iueO23YZ3O1" #id типа опций "цвет"
param_gender_metadata_id = "BWYidMM6gaC_X7mHsVLm90" #id для пола
gender_hash = { 0 => "Унисекс", 1 => "Мужские", 2 => "Женские" }

rest_user = "admin@devilmaydie"
rest_pass = "f9ca1808ba"

#folders...
root_folder = '1CANDIES' #название корневого каталога магазина

namespace :sync do
  desc "Sync goods"
  task :goods => :environment do
    puts "Getting custom fields..."   
    #цвета и размеры
    good_values_size = {}
    good_values_color = {}
    good_values_gender = {}
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
      if metadata_id == param_gender_metadata_id then
        good_values_gender[value_id] = gender_hash.index(value_name)
      end
    end
    
    puts "Getting folders..."
    
    # fetching good folders
    dir_ids = Hash.new #здесь будут храниться уникальные ID каталогов, из которых необходимо вытащить
    
    #поехали
    response = RestClient::Request.new(:method => :get, :url => good_folder_url, :user => rest_user, :password => rest_pass, :headers => { :content_type => :xml }).execute
    if response.code != 200 then
      puts "Error fetching good's folders"
      puts "Answer: " + response.to_str
      return
    end
    xml = response.to_str
    config = XmlSimple.xml_in(xml)

    root_folder_id = ""
    #id рутового каталога        
    config["goodFolder"].each do|val|
      name = val['name']
      if name == root_folder then
        root_folder_id = val['id'][0]
      end
    end        
        
    dir_ids_i = 0
    #теперь, зная id нужных каталогов, находим все нужные подкаталоги, из которых будем вытаскивать товары
    config["goodFolder"].each do|val|
      parent_id = val['parentId']
      if parent_id == root_folder_id then
        folder_name = val['name']
        folder_id = val['id'][0]
        dir_ids[dir_ids_i] = folder_id
        dir_ids_i = dir_ids_i + 1        
        # занесем бренд если его нет
        product_group = ProductGroup.where('ms_id = ?', folder_id)
        if product_group.empty? then
          product_group = ProductGroup.new
          product_group.name = folder_name
          product_group.permalink = folder_id
          product_group.ms_id = folder_id
          product_group.save
        end
      end
    end     
    
    #ну вот мы пришли к самому долгому процессу - получению и обработке товаров
    puts "Getting goods..."
    goods = Hash.new
    
    response = RestClient::Request.new(:method => :get, :url => good_url, :user => rest_user, :password => rest_pass, :headers => { :content_type => :xml }, :timeout => 1800).execute
    if response.code != 200 then
      puts "Error fetching goods"
      puts "Answer: " + response.to_str
      return
    end
    xml = response.to_str
    #puts xml #в случае тестирование - лучше скинуть сначала всё в файл, а потом из него читать
    #return
    #xml = File.read("test.xml")
    config = XmlSimple.xml_in(xml)
        
    #если бы можно было сделать выборку из REST API по parent_id - было бы проще =/
    #а так бегаем по всем товарам и вытаскиваем нужное!
    goods_i = 0
    config["good"].each do|good|
      if good['parentId'].present? then #ну прально, зачем пустые значения то выводить...
        parent_id = good['parentId']
        if dir_ids.value?(parent_id) then
          goods[goods_i] = good
          goods_i = goods_i + 1
        end
      end
    end

    #заносим товары!
        
    goods.each do|i,good|
      sku = good["productCode"]
      name = good["name"]
      price = good["salePrice"]
      
      #attributes
      size_id = 0
      color_id = 0
      gender_id = 0
      if good.has_key?("attribute") then
        good["attribute"].each do|attribute|
          value_id = attribute["entityValueId"]
          if good_values_size.has_key?(value_id) then
            size_id = good_values_size[value_id]
          end
          if good_values_color.has_key?(value_id) then
            color_id = good_values_color[value_id]
          end
          if good_values_gender.has_key?(value_id) then
            gender_id = good_values_gender[value_id]
          end
        end
      end
      
      product = Product.where("ms_sku = ?", sku).limit(1)
      if product.empty?
        product = Product.new
        product.name = name
        product.ms_sku = sku
        product.sku = sku
        product.gender = gender_id
        product.permalink = sku
        product.price = price
        product.master.ms_good_id = good["id"][0]
        product.save
      else
        product = product[0]
      end
      p_group = ProductGroup.where("ms_id = ?", good["parentId"])[0]
      product.product_groups.clear
      product.product_groups << p_group
      product.save 
        
      #variants
      if size_id != 0 and color_id != 0 then
        variant = Variant.where('ms_good_id = ? AND is_master = 0', good["id"][0])
        if variant.empty? then
          found_variant = Variant.new
          found_variant.product_id = product.id
          found_variant.price = price
          found_variant.is_master = 0
          found_variant.sku = sku
          found_variant.option_values << OptionValue.find(size_id)
          found_variant.option_values << OptionValue.find(color_id)
          found_variant.ms_good_id = good["id"][0]
          found_variant.save          
        end          
        
      end      
    end
  end
end
# encoding: utf-8

#some requires
require 'rest_client'
require 'xmlsimple'

#global vars
rest_url = "https://online.moysklad.ru/exchange/rest/ms/xml"
good_folder_url = rest_url + "/GoodFolder/list"
good_url = rest_url + "/Good/list"
entity_url = rest_url + "/CustomEntity/list"

#чтобы получить эти id нужно будет сделать запрос сначала и вывести сам xml. Лучше бы подобные данные выводили в веб-морде
param_gender_metadata_id = "ym_o9SGqiZu7c6j8dztOv2" #id для пола
gender_hash = { 0 => "Унисекс", 1 => "Мужской", 2 => "Женский" }

rest_user = "danya@candies/banya"
rest_pass = "dan13yan88"

#folders...
root_folder = '1CANDIES' #название корневого каталога магазина

namespace :sync do
  desc "Sync goods"
  task :goods => :environment do
    puts "Getting custom fields..."   
    #пол
    good_values_gender = {}
    response = RestClient::Request.new(:method => :get, :url => entity_url, :user => rest_user, :password => rest_pass, :headers => { :content_type => :xml }).execute
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
      if metadata_id == param_gender_metadata_id then
        good_values_gender[value_id] = gender_hash.index(value_name)
      end
    end
    
    puts "Getting folders..."
    
    # fetching good folders
    
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

    subdir_ids = Hash.new #бренды
    dir_ids = Hash.new #здесь будут храниться уникальные ID каталогов, из которых необходимо вытащить        
    dir_ids_i = 0
    subdir_ids_i = 0    
    #теперь, зная id нужных каталогов, находим все нужные подкаталоги, из которых будем вытаскивать товары
    config["goodFolder"].each do|val|
      parent_id = val['parentId']
      if parent_id == root_folder_id then
        folder_name = val['name']
        folder_id = val['id'][0]
        subdir_ids[subdir_ids_i] = folder_id
        subdir_ids_i = subdir_ids_i + 1        
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

    dir_parents = {}

    config["goodFolder"].each do|val|
      parent_id = val['parentId']
      if subdir_ids.has_value?(parent_id) then
        folder_id = val['id'][0]
        dir_ids[dir_ids_i] = folder_id
        dir_ids_i = dir_ids_i + 1
        dir_parents[folder_id] = parent_id        
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
      ms_sku = good["id"][0]
      name = good["name"]
      price = good["salePrice"].to_f / 100
      
      #attributes
      gender_id = 0
      if good.has_key?("attribute") then
        good["attribute"].each do|attribute|
          value_id = attribute["entityValueId"]
          if good_values_gender.has_key?(value_id) then
            gender_id = good_values_gender[value_id]
          end
        end
      end
      
      product = Product.where("ms_sku = ?", ms_sku).limit(1)
      if product.empty?
        product = Product.new
        product.name = name
        product.ms_sku = ms_sku
        product.sku = sku
        product.gender = gender_id
        product.permalink = sku
        product.price = price
        product.master.ms_good_id = good["id"][0]
        product.save
      else
        product = product[0]
      end
      product.price = price
      product.gender = gender_id
      p_group = ProductGroup.where("ms_id = ?", dir_parents[good["parentId"]])[0]
      product.product_groups.clear
      product.product_groups << p_group
      product.save         
    end
  end
end
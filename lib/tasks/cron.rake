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

rest_user = "admin@devilmaydie"
rest_pass = "f9ca1808ba"

#folders...
root_folder = '1CANDIES' #название корневого каталога магазина
male_folder = '2Man' #название "мужского" каталога
female_folder = '3Women' #название "жеского" каталога

namespace :sync do
  desc "Sync goods"
  task :goods => :environment do
    puts "Getting custom fields..."   
    #цвета и размеры
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
    
    puts "Getting folders..."
    
    # fetching good folders
    male_folder_id = '' #эти бы ID да в веб-морде выводить...
    female_folder_id = ''
    dir_ids_male = Hash.new #здесь будут храниться уникальные ID каталогов, из которых необходимо вытащить
    dir_ids_female = Hash.new    
    
    #поехали
    response = RestClient::Request.new(:method => :get, :url => good_folder_url, :user => rest_user, :password => rest_pass, :headers => { :content_type => :xml }).execute
    if response.code != 200 then
      puts "Error fetching good's folders"
      puts "Answer: " + response.to_str
      return
    end
    xml = response.to_str
    config = XmlSimple.xml_in(xml)
    
    #придется пару прогнаться. Первый раз - определить ID для male_ и female_folder
    config["goodFolder"].each do|val|
      name = val['name']
      if name == male_folder then
        male_folder_id = val['id'][0]
      end
      if name == female_folder then
        female_folder_id = val['id'][0]
      end
    end
    
    dir_ids_male_i = 0
    dir_ids_female_i = 0
    #теперь, зная id нужных каталогов, находим все нужные подкаталоги, из которых будем вытаскивать товары
    config["goodFolder"].each do|val|
      parent_id = val['parentId']
      if parent_id == male_folder_id then
        dir_ids_male[dir_ids_male_i] = val['id'][0]
        dir_ids_male_i = dir_ids_male_i + 1        
      end
      if parent_id == female_folder_id then
        dir_ids_female[dir_ids_female_i] = val['id'][0]
        dir_ids_female_i = dir_ids_female_i + 1
      end
    end     
    
    #ну вот мы пришли к самому долгому процессу - получению и обработке товаров
    puts "Getting goods..."
    goods_male = Hash.new
    goods_female = Hash.new
    
    #response = RestClient::Request.new(:method => :get, :url => good_url, :user => rest_user, :password => rest_pass, :headers => { :content_type => :xml }, :timeout => 1800).execute
    #if response.code != 200 then
    #  puts "Error fetching goods"
    #  puts "Answer: " + response.to_str
    #  return
    #end
    #xml = response.to_str
    #puts xml 
    #return
    xml = File.read("test.xml")
    config = XmlSimple.xml_in(xml)
        
    #если бы можно было сделать выборку из REST API по parent_id - было бы проще =/
    #а так бегаем по всем товарам и вытаскиваем нужное!
    goods_male_i = 0
    goods_female_i = 0
    config["good"].each do|good|
      if good['parentId'].present? then #ну прально, зачем пустые значения то выводить...
        parent_id = good['parentId']
        if dir_ids_male.value?(parent_id) then
          goods_male[goods_male_i] = good
          goods_male_i = goods_male_i + 1
        end
        if dir_ids_female.value?(parent_id) then
          goods_female[goods_female_i] = good
          goods_female_i = goods_female_i + 1
        end
      end
    end

    #заносим товары!
    
    all_goods = {"male" => goods_male, "female" => goods_female}
    
    all_goods.each do|gender, goods_coll|
      goods_male.each do|i,good|
        sku = good["productCode"]
        name = good["name"]
        gender = 1
        price = good["salePrice"]
        product = Product.where("ms_sku = ?", sku).limit(1)
        if product.empty?
          product = Product.new
          product.name = name
          product.ms_sku = sku
          product.sku = sku
          product.gender = gender
          product.permalink = sku
          product.price = price
          product.save
        else
          product = product[0]
        end
        #attributes and variants
        if good.has_key?("attribute") then
          good["attribute"].each do|j, attribute|
            value_id = attribue["entityValueId"]
            size_id = 0
            color_id = 0
            if good_values_size.has_key?(value_id) then
              size_id = good_values_size[value_id]
            end
            if good_values_color.has?(value_id) then
              color_id = good_values_size[value_id]
            end
            if size_id != 0 and color_id != 0 then
              all_variants = Variant.where('product_id = ? AND is_master = 0',  product.id)
              found_variant = nil
              all_variants.each do|variant|
                puts variant.option_values
                return
              end
            end
          end
        end
      end      
    end
    
    #puts goods_male
    #puts goods_female
  end
end
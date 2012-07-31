#some requires
require 'rest_client'
require 'xmlsimple'

#global vars
rest_url = "https://online.moysklad.ru/exchange/rest/ms/xml"
good_folder_url = rest_url + "/GoodFolder/list"
good_url = rest_url + "/Good/list"
rest_user = "admin@devilmaydie"
rest_pass = "f9ca1808ba"

#folders...
root_folder = '1CANDIES' #название корневого каталога магазина
male_folder = '2Man' #название "мужского" каталога
female_folder = '3Women' #название "жеского" каталога

namespace :sync do
  desc "Sync goods"
  task :goods => :environment do   
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
    #config = XmlSimple.xml_in(xml, { 'KeyAttr' => 'id' })
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
        dir_ids_male[dir_ids_male_i] = val['id']
        dir_ids_male_i = dir_ids_male_i + 1        
      end
      if parent_id == female_folder_id then
        dir_ids_female[dir_ids_female_i] = val['id']
        dir_ids_female_i = dir_ids_female_i + 1
      end
    end    
  end
end
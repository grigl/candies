# encoding: utf-8

#some requires
require 'rest_client'
require 'xmlsimple'

#global vars
rest_url = "https://online.moysklad.ru/exchange/rest/ms/xml/CustomerOrder"
my_company_rest_url = "https://online.moysklad.ru/exchange/rest/ms/xml/MyCompany/list" 
company_rest_url = "https://online.moysklad.ru/exchange/rest/ms/xml/Company/list"
company_rest_create_url = "https://online.moysklad.ru/exchange/rest/ms/xml/Company"

rest_user = "danya@candies/banya"
rest_pass = "dan13yan88"

target_id = "OieObr9ng9abW9GSMqz353"

namespace :sync do
  desc "Sync orders"
  task :orders => :environment do
    
    #код в комментах ниже позволит вытащить id компании для target_id
    #response = RestClient::Request.new(:method => :get, :url => my_company_rest_url, :user => rest_user, :password => rest_pass, :headers => { :content_type => :xml }).execute
    #if response.code != 200 then
    #  puts "Error fetching remains"
    #  puts "Answer: " + response.to_str
    #  return
    #end
    
    #xml = response.to_str
    #puts xml
    #return
    
    last_order_id = File.read(".last_order_id")
    orders = Order.where('id > ? AND completed_at IS NOT NULL', last_order_id)
    
    orders.each do|order|
      #добавим контрагента
      
      user = User.find(order.user_id)
      
      xml_user = '<company name="'+order.ship_address.attributes["firstname"]+' '+order.ship_address.attributes["lastname"]+'">'
      xml_user += '<contact address="" email="'+user.email+'" faxes="" mobiles="" phones="'+order.ship_address.attributes["phone"]+'"/>'
      xml_user += '<requisite actualAddress="'+order.ship_address.to_s+'">'
      xml_user += '</requisite>'
      xml_user += '</company>'    

      request = RestClient::Resource.new company_rest_create_url, rest_user, rest_pass
      response = request.put xml_user, :content_type => 'application/xml'
      if response.code != 200 then
        puts "Error sending order"
        puts "Answer: " + response.to_str
        return
      end
      created_user_xml = response.to_str
      config = XmlSimple.xml_in(created_user_xml)
      agent_id = config['id'][0]
      
      # а теперь и сам заказ      
      xml = '<?xml version="1.0" encoding="UTF-8"?>'
      xml += '<customerOrder vatIncluded="false" applicable="true" sourceAgentId="'+agent_id+'" targetAgentId="'+target_id+'">'
      order.line_items.each do|line_item|
        variant_id = line_item.variant_id
        sum = line_item.price*line_item.quantity
        xml += '<customerOrderPosition consignmentId="'+line_item.variant.ms_good_id.to_s+'" quantity="'+line_item.quantity.to_s+'">'
        xml += '<basePrice sumInCurrency="'+sum.to_s+'" sum="'+sum.to_s+'"/>'
        xml += '</customerOrderPosition>'
      end
      xml += '</customerOrder>'
      puts xml

      request = RestClient::Resource.new rest_url, rest_user, rest_pass
      response = request.put xml, :content_type => 'application/xml'
      if response.code != 200 then
        puts "Error sending order"
        puts "Answer: " + response.to_str
        return
      end
      puts response.to_str
      
      last_order_id = order.id
      
    end        
    File.open('.last_order_id', 'w') {|f| f.write(last_order_id) }
  end
end
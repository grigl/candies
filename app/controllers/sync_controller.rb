require 'rake'

Rake::Task.clear
Candies::Application.load_tasks

class SyncController < ApplicationController
  def goods
    puts Rake::Task["sync:goods"].reenable
    puts Rake::Task["sync:goods"].invoke
  end
  
  def remains
    puts Rake::Task["sync:remains"].reenable
    puts Rake::Task["sync:remains"].invoke    
  end  
  
  def order
    puts Rake::Task["sync:orders"].reenable
    puts Rake::Task["sync:orders"].invoke
  end
end

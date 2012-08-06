class SyncController < ApplicationController
  def goods
    system('rake sync:goods')
  end
  
  def remains
    system('rake sync:remains')
  end  
  
  def goods
    system('rake sync:orders')
  end
end

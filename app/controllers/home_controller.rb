class HomeController < ApplicationController
  before_action :require_login
  
  
  def index
  end
  
  def menu
  
   
  
  end
  
  def t_leader
    
  end
  
  

  
  def t_guest
    
  end
  
  
  def b_room
    
  end
   
  def t_match
    @lists = List.all
  end
  
  def t_list
    
  end
  
  def t_room
    
  end
  
  def t_host
    @list = List.new
    
  end
  
end

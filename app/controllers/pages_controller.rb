class PagesController < ApplicationController

  def index
    @box = Box.all
    
  end

  

  def drop_show

  end

  def order
    @box = Box.all.pluck(:name,:id)
  end
  
end

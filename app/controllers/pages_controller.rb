class PagesController < ApplicationController

  def index
    @box = Box.all
    @box_new = Box.new
  end

  

  def drop_show

  end

  def order
    @box = Box.all.pluck(:name,:id)
  end
  
end

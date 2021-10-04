class PagesController < ApplicationController

  def index
    @box = Box.includes([:drops])
    @box_new = Box.new
  end

  

  def drop_show

  end

  def order
    @box = Box.all.pluck(:name,:id)
  end
  
end

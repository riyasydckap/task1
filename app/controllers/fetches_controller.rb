class FetchesController < ApplicationController
  
  
  def box
    @box = Box.includes([:drops]).all
    respond_to do |format|
      format.json { render json: @box}
    end

  end

  def drop
  end

  def entitiy
  end

  def tier
  end
end

class DropsController < ApplicationController
  def new
    # raise params.inspect
    @drop = Drop.new
    @box = params[:format]
  end

  def create
    @drop = Drop.new(drop_params)
    @tier = Tier.all
    respond_to do |format|
    if @drop.save
      format.js 
    else
      raise @drop.errors.inspect
    end
  end

  end

  private

    def drop_params
      params.require(:drop).permit(:name, :box_id)
    end

end

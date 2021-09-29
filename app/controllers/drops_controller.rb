class DropsController < ApplicationController
  def new
    # raise params.inspect
    @drop = Drop.new
    @box = params[:format]
  end

  def create
    @drop = Drop.new(drop_params)
    if @drop.save
      redirect_to box_path(drop_params["box_id"])
    else
      raise @drop.errors.inspect
    end

  end

  private

    def drop_params
      params.require(:drop).permit(:name, :box_id)
    end

end

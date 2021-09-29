class BoxesController < ApplicationController
  def show
    @box = Box.where(id: params[:id]).first
    @tier = Tier.all.pluck(:name)
  end
  
  def new
    @box = Box.new
  end
  def create
    @box = Box.new(box_params)
    if @box.save
      redirect_to index_path
    else
      redirect_to index_path
    end
  end

  private

  def box_params
    params.require(:box).permit(:name,:sku_prefix, :sku_postfix)
  end

end

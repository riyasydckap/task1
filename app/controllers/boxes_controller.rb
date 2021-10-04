class BoxesController < ApplicationController
  def show
    @box = Box.where(id: params[:id]).first
    @tier = Tier.all
  end
  
  def new
    @box = Box.new
  end
  def create
    @box = Box.new(box_params)
    respond_to do |format|
      if @box.save    
        format.js
        #redirect_to index_path
      else
        #redirect_to index_path
        format.js
      end
    end
  end

  def box_click
    @box = Box.where(id: params[:box]).first
    @drops = Drop.where(box_id: @box.id).all
    @res = []
    usr_membership = Tier.where(name: 'Gold').first

    @drops.each do |drop|

      @ans =  [drop.name, drop.id,drop.entities.all.pluck(:name,:id)]

      drop.entities.all.each_with_index do |en,i|
        price = Connection.where(tier_id: usr_membership, entity_id: en.id).first.price
        @ans[2][i] << price
      end
      @res << @ans
      # @ent = Entity.where(drop_id: drop.id).all.pluck()
    end
    respond_to do |format|
      format.json {render json: @res }
    end

  end

  private

  def box_params
    params.require(:box).permit(:name,:sku_prefix, :sku_postfix)
  end

end

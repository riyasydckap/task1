class BoxesController < ApplicationController
  before_action :tier_fetch, only: :show
  before_action :box_fetch, only: [:show, :box_click]
  def show
    # @box = Box.where(id: params[:id]).first
    # @tier = Tier.all
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
      raise @box.errors.inspect
      end
    end
  end

  def tier_fetch
    @tier = Tier.all.pluck(:name,:id)
  end
  def box_fetch
    @box = Box.where(id: params[:id]).first
  end
  def box_click
    # @box = Box.where(id: params[:box]).first
    # raise @box.inspect
    @drops = Drop.where(box_id: @box.id).all
    @res = []
    usr_membership = Tier.where(name: 'Gold').first

    @drops.includes([:entities]).each do |drop|
      d = drop.entities.all.to_a
      @ans =  [drop.name, drop.id,d.pluck(:name,:id)]

      d.each_with_index do |en,i|
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

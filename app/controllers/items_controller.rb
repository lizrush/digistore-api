class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    set_item
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      render "show"
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

   def destroy
    set_item
    @item.destroy
    render json: "", status: :no_content
  end

  def update
    set_item
    if @item.update(item_params)
      render "show"
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end


  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:orderItem).permit(:product_id,
                                   :quantity,
                                   :currentprice,
                                   :product_avatar,
                                   :product_name,
                                   :subtotal)
    end
end

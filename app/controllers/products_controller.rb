class ProductsController < ApplicationController

  respond_to :json

  def index
    @products = Product.all
    respond_with(@Product.as_json(only: :id))
  end

  def show
    respond_with(@product = Product.find(params[:id]))
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :description, :price))

    if @product.save
      respond_with(@product, status: :created)
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

end

class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
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

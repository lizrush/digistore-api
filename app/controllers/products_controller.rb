class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def delete
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :image, :avatar)
  end

end

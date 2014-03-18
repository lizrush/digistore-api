class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    set_product
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    set_product
    @product.destroy
    render json: "", status: :no_content
  end

  def update
    set_product
    if @product.update(product_params)
      render "show"
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :image, :avatar)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end

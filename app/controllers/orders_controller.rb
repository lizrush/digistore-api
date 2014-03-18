class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      respond_with(@order, status: :created)
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def delete
  end

  private

  def order_params
    params.require(:order).permit(:cart, :customer_name, :email, :status, :zipcode, :expdate, :ccv, :ccnumber)
  end

end

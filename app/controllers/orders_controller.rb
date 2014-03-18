class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    set_order
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      respond_with(@order, status: :created)
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

   def destroy
    set_order
    @order.destroy
    render json: "", status: :no_content
  end

  def update
    set_order
    if @order.update(order_params)
      render "show"
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:cart, :customer_name, :email, :status, :zipcode, :expdate, :ccv, :ccnumber)
  end

  def set_order
    @order = Order.find(params[:id])
  end

end



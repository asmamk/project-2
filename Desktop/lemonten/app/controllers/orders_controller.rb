class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = current_user.orders.new
  end

  def create 
    @order = current_user.orders.new(order_params)
    if @order.save 
      redirect_to orders_path 
    else
      render "new"
    end
  end 

  def edit
    @uorder = current_user


  end

  def order_params 
    params.require(:order).permit(:name, :quntity, :table_number)
  end 

end
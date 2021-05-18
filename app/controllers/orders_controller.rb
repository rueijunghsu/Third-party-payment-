class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  
  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
  
    render :create if @order.save
  end 
  
  
  private
    def order_params
      params.require(:order).permit(:name, :chanel, :amount)
    end	
end

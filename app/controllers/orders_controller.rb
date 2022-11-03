class OrdersController < ApplicationController

  def new
    @order = Order.new
    @sneaker = Sneaker.find(params[:id])
  end

  def create
    @order = Order.new
    @sneaker = Sneaker.find(params[:sneaker_id])
    @order.sneaker = @sneaker
    @order.user = current_user

    if @order.save
      redirect_to sneakers_path

    end
  end

  def show
    @order = Order.find(:order_id)
    @sneaker = Sneaker.find(params[:id])
  end

  # private

  # def order_params
  #   params.require(:order).permit(:user_id)
  # end
end

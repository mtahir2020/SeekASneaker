class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.where(:user_id == current_user.id)
  end

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
      redirect_to order_path(@order)
    end
  end

  def show
    @order = Order.find(params[:id])
    # @sneaker = Sneaker.find(params[:sneaker_id])
  end

  # def confirm
  #   @order = Order.new(order_params) # GET THE POST parameters
  #   render :new if @order.invalid? # Return if false
  # end

  private

  def order_params
    params.require(:order).permit(:user_id, :sneaker_id)
  end
end

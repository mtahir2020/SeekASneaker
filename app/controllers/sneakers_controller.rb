class SneakersController < ApplicationController
  before_action :authenticate_user!
  def index
    @sneakers = Sneaker.all
  end

  def show
    @sneaker = Sneaker.find(params[:id])
    @order = Order.new
    # if @order.save
    #   redirect_to sneaker(@sneaker)
    # end
  end

  def new
    @sneaker = Sneaker.new
  end

  def create
    @sneaker = Sneaker.new(sneaker_params)
    @sneaker.user = current_user
    redirect_to sneakers_path if @sneaker.save!
  end

  def destroy
    @sneaker = Sneaker.find(params[:id])
    @sneaker.destroy
  end

  private

  def sneaker_params
    params.require(:sneaker).permit(:name, :price, :description, :image_url)
  end
end

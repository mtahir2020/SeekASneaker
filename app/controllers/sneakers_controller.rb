class SneakersController < ApplicationController

  def index
    @sneakers = Sneaker.all
  end

  def show
    @sneaker = Sneaker.find(params[:id])
  end

  def new
    @sneaker = Sneaker.new
  end

  def create
    @sneaker = Sneaker.new(sneaker_params)
    @sneaker.save
  end

  def destroy
    @sneaker = Sneaker.find(params[:id])
    @sneaker.destroy
  end

  private

  def sneaker_params
    params.require(:sneaker).permit(:name, :price, :description, { photos: [] })
  end
end

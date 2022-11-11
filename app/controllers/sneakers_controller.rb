class SneakersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_sneaker, only: %i[show update destroy edit]

  def index
    if params[:search]
      @search = params[:search]
      @sneakers = Sneaker.where("name ILIKE ?", "%#{params[:search]}%")
    else
      @sneakers = Sneaker.all
    end
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
    if @sneaker.save
      redirect_to sneaker_path(@sneaker), notice: "Post was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @sneaker.update(sneaker_params)
      redirect_to @sneaker, notice: "Post was successfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @sneaker = Sneaker.find(params[:id])
    @sneaker.destroy
    redirect_to root_path, notice: "Post was deleted"
  end

  private

  def set_sneaker
    @sneaker = Sneaker.find(params[:id])
  end

  def sneaker_params
    params.require(:sneaker).permit(:name, :price, :description, photos: [])
  end
end

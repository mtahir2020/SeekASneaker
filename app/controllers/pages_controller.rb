class PagesController < ApplicationController
  def home
  end

  def my_sneakers
    @sneakers = Sneaker.where(user: current_user)
  end

  # def edit
  #  @sneaker = Sneaker.find(params[:id])
  # end

  # def update
  #   @sneaker = Sneaker.find(params[:id])
  #   @sneaker.update(sneaker_params)
  #   redirect_to sneaker_path(@sneaker)
  # end

  # def destroy
  #   @sneaker = Sneaker.find(params[:id])
  #   @sneaker.destroy
  #   redirect_to sneakers_path, status: :see_other
  # end

  # private
  # def sneaker_params
  #   params.require(:sneaker).permit(:user_id, :name, :price, :description. :image_url)
  # end

end

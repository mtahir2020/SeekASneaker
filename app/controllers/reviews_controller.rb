class ReviewsController < ApplicationController
  def index
    # @reviews = Review.all
    @reviews = Review.where(:user_id == current_user)
    
  end

  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user
    if @review.save
      redirect_to user_reviews_path(@user)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

class ReviewsController < ApplicationController
  def index
    # @reviews = Review.all
    # we are getting the params[user_id] from the form.. isn't that the buyer though
    @reviews = Review.where(user_id: params[:user_id])
    @user = User.find(params[:user_id])
    # want to show that user's sneakers here
  end

  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end


  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user
    @review.reviewer = current_user.username
    if @review.save
      redirect_to user_reviews_path(@user)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

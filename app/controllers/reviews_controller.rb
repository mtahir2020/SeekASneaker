class ReviewsController < ApplicationController
  def index
    # @reviews = Review.all
    # we want to get the order in here, so we can get the user associated with it
    @reviews = Review.where(user_id: params[:user_id])
    # this is not right - is displaying for every single user
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

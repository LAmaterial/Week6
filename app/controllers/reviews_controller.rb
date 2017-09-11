class ReviewsController < ApplicationController

  def index
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])

  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])

    if @review.save
      redirect_to restaurant_path(@review.restaurant_id), notice: "Review added successfully!"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(
      :rating,
      :body
    ).merge(restaurant: Restaurant.find(params[:restaurant_id]))
  end
end

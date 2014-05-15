class ReviewsController < ApplicationController


  def create
    restaurant = Restaurant.find(params[:review][:restaurant_id])
    restaurant.reviews.create(body: params[:review][:body])
    redirect_to restaurant
  end

  def destroy
    review = Review.find(params[:id])
    restaurant = Restaurant.find(review[:restaurant_id])
    review.destroy
    redirect_to restaurant
  end

end

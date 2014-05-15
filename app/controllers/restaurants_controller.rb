class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    Restaurant.find(params[:id]).destroy
    redirect_to restaurants_path
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(set_params)
    redirect_to restaurants_path
  end

  private

  def set_params
    params.require(:restaurant).permit(:name, :city, :photo_url)
  end

end


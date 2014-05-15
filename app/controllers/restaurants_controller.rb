class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :destroy]
  before_action :set_params, only: [:create, :update]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(@params)
    redirect_to restaurants_path
  end

  private

  def set_params
    @params = params.require(:restaurant).permit(:name, :city, :photo_url)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
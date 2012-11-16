class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # creates an array of all the dishes in a restaurant
  end
  def show
    @restaurant = Restaurant.find(dish_id)
  end
  def new
  end
  def edit
  end
  def create
     @restaurant = Restaurant.new(params[:dish])

    if @restaurant.save
      redirect_to restaurants_path
      # redirect to dishes page if saved properly
      end
      render :new
      # stay on the form page
  end
  def update
  end
  def destroy
  end
end
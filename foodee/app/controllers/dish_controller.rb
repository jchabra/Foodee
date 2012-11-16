class DishController < ApplicationController
  def index
    @dishes = Dish.all
    # creates an array of all the dishes in a restaurant
  end
  def show
    @dish = Dish.find(dish_id)
  end
  def new
  end
  def edit
  end
  def create
    @dish = Dish.new(params[:dish])

    if @dish.save
      redirect_to dishes_path
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
class DishesController < ApplicationController
  def index
    @dishes = Dish.all
    # creates an array of all the dishes in a restaurant
  end
  def show
    dish_id = params[:id]
    @dish = Dish.find(dish_id)
    binding.pry
  end
  def new
    @dish = Dish.new
  end
  def edit
    @dish = Dish.find(params[:id])
  end
  def create
    @dish = Dish.new(params[:dish])
    if @dish.save
      redirect_to dishes_path
      # redirect to dishes page if saved properly
    else
      render :new
      # stay on the form page
    end
  end
  def update
    @dish = Dish.find(params[:id])
    if @dish.update_attributes(params[:dish])
      redirect_to @dish
    else
      render :edit
    end
  end
  def destroy
    dish = Dish.find(params[:id])
    dish.delete
    redirect_to dishes_path
  end
end
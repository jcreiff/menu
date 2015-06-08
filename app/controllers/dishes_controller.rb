class DishesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @dish = Dish.new
  end

  def edit
    @dish = Dish.first
  end
end

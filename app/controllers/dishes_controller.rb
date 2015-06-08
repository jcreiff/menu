class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def new
    @course_id = params[:course_id]
    @dish = Dish.new(course_id: @course_id)
  end

  def edit
  end

  def show
    render :edit
  end

  def create
    @dish = Dish.new(dish_params, course_id: params[:course_id])
    respond_to do |format|
      if @dish.save
        format.html { redirect_to dishes_path, notice: 'Dish was successfully created.' }
        format.json { render :show, status: :created, location: @dish }
      else
        format.html { render :new }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @dish.update(dish_params)
        format.html { redirect_to dishes_path, notice: 'Dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish }
      else
        format.html { render :edit }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dish.destroy
    respond_to do |format|
      format.html { redirect_to dishes_path, notice: 'Dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private def set_dish
    @dish = Dish.find(params[:id])
  end

  private def dish_params
    params.require(:dish).permit(:name, :description, :price, :course_id)
  end

end

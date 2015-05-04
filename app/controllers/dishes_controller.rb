class DishesController < ApplicationController

  def all
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def create
    @dish = Dish.new(dish_params)
    # params[:dish] mass assignment requires strong params
    if @dish.save
      redirect_to '/dishes/all'
    else
      render :new
    end
  end

  # by convention the template is same as the method name
  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update(dish_params)
      redirect_to '/dishes/all'
    else
      render :edit
    end
  end 

  def destroy
    @dish = Dish.find(params[:id])  
    @dish.destroy
    redirect_to '/dishes/all'
  end 

  def dish_params
    params.require(:dish).permit(:title, :image_url, :remote_photo_url, :photo, :tag_ids => [])
  end

end

class PlantsController < ApplicationController
     def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id]) 
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(params.require(:name).permit(:health, :zone))
    if @plant.save
      redirect_to plants_path
    else
      render 'new'
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    if @plant.update_attributes(params.require(:name).permit(:w, :zone))
      redirect_to plants_path
    else
      render 'edit'
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to plants_path
  end
end

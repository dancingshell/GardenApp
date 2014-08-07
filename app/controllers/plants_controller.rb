class PlantsController < ApplicationController

  before_action :get_garden, only:[:new, :create]

  def index
    @plants = Plant.all
  end

  def show

    # @id = params[:id]
    # @photo = Photo.find(@id)
    @garden = Garden.where(id: params[:garden_id]).first
    @id = params[:id]
    @plant = Plant.find(@id)

    # @plant = Plant.find(params[:id])
    # @garden = Garden.where(id: params[:garden_id]).first
    # @garden = Garden.find(params[:garden_id])
    # @plant = Plant.new
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = @garden.plants.new(params.require(:plant).permit(:name, :health, :notes, :variety))
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render 'new'
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    if @plant.update_attributes(params.require(:plant).permit(:name, :health, :notes, :variety))
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

  private
  def get_garden
    @garden = Garden.where(:id => params[:garden_id]).first
  end
    
end

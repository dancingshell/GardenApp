class GardensController < ApplicationController
  
  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find(params[:id]) 
  end

  def new
    @garden = Garden.new
  end

  def create
    garden = Garden.new(garden_params)
    garden.user = current_user
    if garden.save 
      redirect_to gardens_path
    else
      render 'new'
    end
  end

  def edit
    @garden = Garden.find(params[:id])
  end

  def update
    @garden = Garden.find(params[:id])
    if @garden.update_attributes(garden_params)
      redirect_to gardens_path
    else
      render 'edit'
    end
  end

  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    redirect_to gardens_path
  end

  def garden_params
    params.require(:garden).permit(:name, :shade, :season_id, :user_id)
  end

end

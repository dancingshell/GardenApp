class ClimatesController < ApplicationController

   def index
    @climates = Climate.all
  end

  def show
    @climate = Climate.find(params[:id]) 
  end

  def new
    @climate = Climate.new
  end

  def create
    @climate = Climate.new(climate_params)
    if @climate.save
      redirect_to climates_path
    else
      render 'new'
    end
  end

  def edit
    @climate = Climate.find(params[:id])
  end

  def update
    @climate = Climate.find(params[:id])
    if @climate.update_attributes(climate_params)
      redirect_to climates_path
    else
      render 'edit'
    end
  end

  def destroy
    @climate = Climate.find(params[:id])
    @climate.destroy
    redirect_to climates_path
  end

  def climate_params
    params.require(:climate).permit(:climate, :zone)
  end

end

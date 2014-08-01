class ClimatesController < ApplicationController
  
   def index
    @climates = Climate.all
  end

  def show
    @climate = Climate.find(params[:id]) 
  end

end

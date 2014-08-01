class VarietiesController < ApplicationController
  def index
    @varietys = Variety.all
  end

  def show
    @variety = Variety.find(params[:id]) 
  end

  def new
    @variety = Variety.new
  end

  def create
    @variety = Variety.new(params.require(:variety).permit(:name, :roast, :origin, :quantity))
    if @variety.save
      redirect_to varieties_path
    else
      render 'new'
    end
  end

  def edit
    @variety = Variety.find(params[:id])
  end

  def update
    @variety = Variety.find(params[:id])
    if @variety.update_attributes(params.require(:variety).permit(:name, :roast, :origin, :quantity))
      redirect_to varieties_path
    else
      render 'edit'
    end
  end

  def destroy
    @variety = Variety.find(params[:id])
    @variety.destroy
    redirect_to varieties_path
  end
end

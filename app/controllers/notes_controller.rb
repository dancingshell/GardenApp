class NotesController < ApplicationController
  def new
    @plant = Plant.where(id: params[:plant_id]).first
    @note = @plant.notes.create
  end

  def create
    @plant = Plant.where(id: params[:plant_id]).first
    @note = @plant.notes.create(params.require(:note).permit(:note, :date, :plant_id))
  end

  def show
  end

  def index
  end
end


# def new
#   @recipe = Recipe.find(params[:recipe_id])
#   @ingredient = @recipe.ingredients.build
# end

# def create
#   @recipe = Recipe.find(params[:recipe_id]) 
#   @ingredient = @recipe.ingredients.build(params[:ingredient]) 
#   # if @recipe.save 
# end
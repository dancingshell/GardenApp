class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo =Photo.new
  end

  def show
    @id = params[:id]
    @photo = Photo.find(@id)
  end

  # def create
  #   @photo = Photo.new(photo_params)
  #   if @photo.save
  #     redirect_to photos_path
  #   end
  # end

   def create
    # Find our parent decision that we should attach to
    @plant = Plant.find(params[:plant_id])
    photo = Photo.new(photo_params)
    # Attach this criterion to a decision
    photo.plant = @plant
    if photo.save
      redirect_to plant_photo_path(@plant.id)
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:image)
  end
end

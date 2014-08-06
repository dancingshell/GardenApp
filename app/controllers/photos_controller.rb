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

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_path
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:image)
  end
end

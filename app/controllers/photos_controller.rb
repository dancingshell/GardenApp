class PhotosController < ApplicationController

  before_action :get_plant

  def index
    @photos = Photo.all
  end

  def new
    @garden
    @photo =Photo.new
  end

  def show
    @garden
    @photo = Photo.find(params[:id])
  end


  def create
    @plant
    @photo = @plant.photos.new(photo_params)
    @photo.date ||= DateTime.now
    @tags = tagger(:tags)
    @garden
    # @photo.tags = tagger(@photo.tags)
    # Attach this criterion to a decision
    if @photo.save
      redirect_to garden_plant_path(@garden, @plant)
    else
      render 'new'
    end
  end

  def tagger(str)
    str = str.to_s.split(" ").each { |s| s << ", " if s[-1] != "," }.join
  end

  private
  def photo_params
    params.require(:photo).permit(:image, :tags)
  end

  def get_plant
    @plant = Plant.where(:id => params[:plant_id]).first
    @garden = @plant.garden
  end
end

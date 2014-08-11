class PhotosController < ApplicationController

  before_action :get_plant

  def index
    @photos = Photo.all
  end

  def new
    @photo =Photo.new
  end

  def show
    @plant = Plant.where(id: params[:plant_id]).first
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
    @photo = @plant.photos.new(photo_params)
    @photo.date ||= DateTime.now
    # @tags = tagger(tags)
    @photo.tags = tagger(@photo.tags)
    # Attach this criterion to a decision
    if @photo.save
      redirect_to plant_photos_path(@plant.id)
    else
      render 'new'
    end
  end


  # @plant = @garden.plants.new(params.require(:plant).permit(:name, :health, :notes, :variety))
  #   if @plant.save
  #     redirect_to garden_path(@garden)
  #   else
  #     render 'new'
  #   end

  def tagger(str)
    str = str.split(" ").each { |s| s = s[-1] = "" if s[-1] == "," }
  end

  private
  def photo_params
    params.require(:photo).permit(:image, :tags)
  end

  def get_plant
    @plant = Plant.where(:id => params[:plant_id]).first
  end
end

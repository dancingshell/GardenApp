class Garden
  include Mongoid::Document
  field :name, type: String
  field :shade, type: String
  belongs_to :season
  has_many :varieties
end

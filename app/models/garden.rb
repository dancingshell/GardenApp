class Garden
  include Mongoid::Document
  field :name, type: String
  field :shade, type: String
  belongs_to :season
  belongs_to :user
  has_many :plants
end

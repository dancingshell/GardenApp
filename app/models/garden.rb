class Garden
  include Mongoid::Document
  field :name, type: String
  field :shade, type: String
  field :date, type: DateTime
  belongs_to :season
  belongs_to :user
  has_many :plants
end

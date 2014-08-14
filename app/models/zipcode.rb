class Zipcode
  include Mongoid::Document
  field :zipcode, type: String
  field :county, type: String
  field :climate_zone, type: String
  belongs_to :climate
  has_many :users
end

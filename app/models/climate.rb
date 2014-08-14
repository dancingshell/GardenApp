class Climate
  include Mongoid::Document
  field :climate, type: String
  field :zone, type: String
  field :description, type: String
  has_many :zipcodes

end

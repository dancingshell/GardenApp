class Climate
  include Mongoid::Document
  field :climate, type: String
  field :zone, type: String
  has_many :zipcodes
  has_many :users

end

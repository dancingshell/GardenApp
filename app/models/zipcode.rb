class Zipcode
  include Mongoid::Document
  field :zipcode, type: String
  belongs_to :climate
  has_many :users
end

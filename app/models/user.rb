class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :zipcode, type: String
  belongs_to :climate
  has_many :seasons
end

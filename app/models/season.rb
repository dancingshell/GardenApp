class Season
  include Mongoid::Document
  field :season, type: String
  belongs_to :user
  has_many :years
  has_many :gardens
end

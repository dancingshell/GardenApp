class Season
  include Mongoid::Document
  field :season, type: String
  field :year, type: Integer
  belongs_to :user
  has_many :gardens
end

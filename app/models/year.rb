class Year
  include Mongoid::Document
  field :year, type: Integer
  has_many :seasons
end

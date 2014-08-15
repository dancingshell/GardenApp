class Score
  include Mongoid::Document
  field :score, type: Integer
  has_many :healths
end

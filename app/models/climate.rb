class Climate
  include Mongoid::Document
  field :climate, type: String
  field :zone, type: Integer
  has_many :users

end

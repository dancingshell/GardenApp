class Variety
  include Mongoid::Document
  field :variety, type: String
  belongs_to :garden
end

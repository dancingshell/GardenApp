class Plant
  include Mongoid::Document
  field :name, type: String
  field :health, type: String
  field :notes, type: String
  belongs_to :variety
  belongs_to :garden
  has_many :photos, inverse_of :plants
  accepts_nested_attributes_for :photos, :allow_destroy => true
end

class Plant
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :name, type: String
  field :plant_method, type: String
  # field :health, type: String
  # field :note, type: String

  belongs_to :variety

  
  # accepts_nested_attributes_for :varieties
  belongs_to :garden
  has_many :photos
  has_many :notes
  # accepts_nested_attributes_for :notes, allow_destroy: true

end

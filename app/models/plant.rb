class Plant
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :name, type: String
  field :health, type: String
  field :notes, type: String

  belongs_to :variety
  # accepts_nested_attributes_for :varieties
  belongs_to :garden
  has_many :photos

end

class Note
  include Mongoid::Document
  field :note, type: String
  field :date, type: String
  belongs :plant
end

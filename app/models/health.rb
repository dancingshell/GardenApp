class Health
  include Mongoid::Document
 
  field :date, type: DateTime
  belongs_to :scores
end

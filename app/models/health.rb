class Health
  include Mongoid::Document
  include Mongoid::Timestamp
  field :date, type: DateTime
  belongs_to :scores
end

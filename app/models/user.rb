class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  
  field :name, type: String
  field :password_digest, type: String  
  field :email, type: String
  field :zipcode, type: String 

  has_secure_password

  belongs_to :climate
  has_many :gardens
end

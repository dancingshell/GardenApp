class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  include Mongoid::Paperclip
  
  field :name, type: String
  field :password_digest, type: String  
  field :email, type: String
  field :zipcode, type: String 

  has_secure_password
  has_mongoid_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]


  belongs_to :zipcode
  has_many :gardens
end

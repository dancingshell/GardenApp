class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  include Mongoid::Paperclip
  
  field :first_name, type: String
  field :last_name, type: String
  field :password_digest, type: String  
  field :email, type: String
  field :zipcode, type: String

  has_secure_password
  has_mongoid_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]


  validates_presence_of :email, :password, :password_confirmation
  validates :password, length: { in: 8..12 }
  validates_format_of :email, :with => /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\z/i
  validates_uniqueness_of :email


  # belongs_to :zipcode
  has_many :gardens
end
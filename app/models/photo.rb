# class Photo
#   include Mongoid::Document
#   include Mongoid::Paperclip


#   field :photo, type: String
#   field :url, type: String
#   field :html, type: String
#   # blongs_to :plant, :inverse_of => :pictures
#   belongs_to :plant, :inverse_of => :pictures

#   has_mongoid_attached_file :photo
# end


class Photo
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::TagsArentHard

  field :date, :type => DateTime

  taggable_with :tags, separator: ";"
  taggable_with :plants, separator: ";"

  belongs_to :plant

  has_mongoid_attached_file :image
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end


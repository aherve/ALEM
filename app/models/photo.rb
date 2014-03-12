class Photo
  include Mongoid::Document
  field :title, type: String
  field :img, type: String
  field :published, type: Boolean
  field :description, type: String

  mount_uploader :img, ImgUploader
end

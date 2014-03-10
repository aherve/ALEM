class Photo
  include Mongoid::Document
  field :title, type: String
  field :img, type: String

  mount_uploader :img, ImgUploader
end

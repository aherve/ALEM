class Photo
  include Mongoid::Document
  field :title, type: String
  field :img, type: String
  field :published, type: Boolean

  mount_uploader :img, ImgUploader
end

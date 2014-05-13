class Video
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :youtube_id, type: String
  field :description, type: String

  validates_presence_of :youtube_id, :title
  validates_uniqueness_of :youtube_id
end

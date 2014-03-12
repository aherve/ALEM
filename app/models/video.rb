class Video
  include Mongoid::Document
  field :title, type: String
  field :iframe_url, type: String
end

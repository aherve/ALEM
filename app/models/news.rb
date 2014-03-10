class News
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  field :date_time, type: DateTime

  validates_presence_of :title, :content
end

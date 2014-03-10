class News
  include Mongoid::Document
  field :title, type: String
  field :short_description, type: String
  field :content, type: String
  field :date_time, type: Date

  validates_presence_of :title, :content
end

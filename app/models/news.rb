require 'erb'
class News
  include Mongoid::Document
  field :title, type: String
  field :url, type: String
  field :short_description, type: String
  field :content, type: String
  field :date_time, type: Date

  validates_presence_of :title, :content, :date
  validates_format_of :url, :with => /\A[a-zA-z0-9%-_]+\z/

  validates_uniqueness_of :url

  def to_param
    url
  end

end

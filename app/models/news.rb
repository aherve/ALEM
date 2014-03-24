require 'erb'
class News
  include Mongoid::Document
  field :title, type: String
  field :url, type: String
  field :address, type: String
  #field :short_description, type: String
  field :content, type: String
  field :date, type: Date
  field :updated_at, type: Date

  mount_uploader :img, ImgUploader

  validates_presence_of :title, :content, :date, :url#, :short_description
  
  validates_format_of :url, :with => /\A[a-zA-z0-9%\-_]+\z/
  validates_uniqueness_of :url

  def to_param
    url
  end

  before_save :updated_at

  def updated_at
    @updated_at = Date.today
  end

end

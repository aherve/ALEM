class PhotosController < ApplicationController
  def index
    @photos = Photo.where(:published => true)
  end
end


class HomeController < ApplicationController
  def index
    @latest_news = News.all.sort_by(&:date).take(10)
    @photos = Photo.where(:published => true)
  end

  def contact
  end
end

class HomeController < ApplicationController
  def index
    @latest_news = News.all.sort_by(&:date).reverse.take(10)
    @photos = Photo.where(:published => true)
    @videos = Video.all
  end

  def contact
  end
end

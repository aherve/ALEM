class HomeController < ApplicationController
  def index
    @latest_news = News.gte(date: Date.today - 1).sort_by(&:date) 
    @photos = Photo.where(:published => true)
    @videos = Video.all.sort_by(&:created_at).reverse
  end

  def contact
  end
end

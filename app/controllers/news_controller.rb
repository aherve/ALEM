class NewsController < ApplicationController
  def index
    @actus = News.all.sort_by(&:date_time).reverse
  end

  def show
    puts "debug : url = #{params[:url]}"
    @actu = News.find_by(:url => params[:url])
  end
end

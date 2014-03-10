class NewsController < ApplicationController
  def index
    @actus = News.all.sort_by(&:date_time).reverse
  end

  def show
    @actu = News.find(params[:id])
  end
end

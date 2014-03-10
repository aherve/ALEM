ALEM::Application.routes.draw do

  get "news" => "news#index",  :as => "news_index"
  get "news/:url" => "news#show", :as => "news"
  root :to => "home#index"
  get "home/index"

  get "photos/index", :as => "photos"
  get "videos/index", :as => "videos"
  get "music/index" , :as => "music"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

end

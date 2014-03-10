ALEM::Application.routes.draw do

  get "news/index",  :as => "news"
  get "news/show"
  root :to => "home#index"
  get "home/index"

  get "photos/index", :as => "photos"
  get "videos/index", :as => "videos"
  get "music/index" , :as => "music"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

end

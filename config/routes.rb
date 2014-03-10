ALEM::Application.routes.draw do

  root :to => "home#index"

  get "photos/index"
  get "videos/index"
  get "music/index"
  get "home/index"
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

end

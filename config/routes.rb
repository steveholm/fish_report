FishReport::Application.routes.draw do

  resources :locations

  resources :flies

  root :to => 'fish_strategy#index', :as => 'home'
 
end

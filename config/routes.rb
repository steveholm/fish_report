FishReport::Application.routes.draw do

  resources :locations

  resources :flies

 get '/home' => 'fish_strategy#index', :as => 'home'
 
end

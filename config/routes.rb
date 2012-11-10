FishReport::Application.routes.draw do

 get '/home' => 'fish_strategy#index', :as => 'home'
 
end

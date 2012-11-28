Ontap::Application.routes.draw do
  get "profile/index"
  get "home/index"

  devise_for :users
  root :to => "home#index"
  
  resources :searches
  resources :beers

  resources :users do 
  	resources :beer_list
  end

end

Ontap::Application.routes.draw do
  get "profile/index"
  get "home/index"

  devise_for :users
  root :to => "home#index"
  
  resources :searches

  resources :users do 
  	resources :beers
  end

end

Ontap::Application.routes.draw do
  get "profile/index"
  get "home/index"

  devise_for :users
  root :to => "home#index"
  resources :beers
  
  resources :users do 
  	resources :beers
  end

end

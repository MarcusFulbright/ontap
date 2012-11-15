Ontap::Application.routes.draw do
  get "profile/index"
  get "home/index"

  devise_for :users
  root :to => "home#index"
  match "searches" => "searches#show"
  match "beers" =>"searches#list"
end

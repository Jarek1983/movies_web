Rails.application.routes.draw do
  resources :screenwriters
  resources :search
  resources :directors
  resources :actors
  resources :sessions
  resources :users
  resources :genres
  root 'movies#index'
  resources :movies do
  	resources :comments
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

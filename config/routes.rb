Rails.application.routes.draw do
  resources :users
  root 'movies#index'
  resources :movies do
  	resources :comments
  	collection do
  		get :search
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

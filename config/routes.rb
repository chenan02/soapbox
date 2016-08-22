Rails.application.routes.draw do
  root 'channels#index'
  resources :users
  resources :channels
  resources :posts
  resources :subscriptons
  resources :sessions
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  match '/logout', to: 'sessions#destroy', via: :delete
end

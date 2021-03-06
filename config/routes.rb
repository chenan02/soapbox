Rails.application.routes.draw do
  root 'channels#index'
  resources :users
  resources :channels
  resources :posts
  resources :subscriptions
  resources :sessions
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  match '/logout', to: 'sessions#destroy', via: :delete
  get 'send_message', to: 'channels#send_message'
end

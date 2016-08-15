Rails.application.routes.draw do
  resources :users
  resources :channels
  resources :posts
  resources :subscriptons
  resources :sessions
end

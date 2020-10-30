Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  resources :friends
  resources :friend_requests
  devise_for :users
end

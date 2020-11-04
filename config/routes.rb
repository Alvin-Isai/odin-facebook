Rails.application.routes.draw do
  root 'posts#index'
  get 'users/show'
  get 'profile', to: 'users#show'
  resources :posts do
    resources :likes
    resources :comments
  end
  resources :friends
  resources :friend_requests
  devise_for :users
  resources :users, only: [:show]
  resource :profile
end

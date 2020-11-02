Rails.application.routes.draw do
  root 'posts#index'
  resources :posts do 
    resources :likes
    resources :comments
  end
  resources :friends
  resources :friend_requests
  devise_for :users
end

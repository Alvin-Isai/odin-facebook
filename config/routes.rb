Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: %i[show index]
  resource :profile
  devise_scope :user do
    authenticated :user do
      root 'posts#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  get 'users/show'
  get 'profile', to: 'users#show'
  resources :posts do
    resources :likes
    resources :comments
  end
  resources :friendships
  resources :friend_requests
end

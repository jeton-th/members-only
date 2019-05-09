Rails.application.routes.draw do
  root 'posts#index'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  get 'posts', to: 'posts#index'
  get 'new_post', to: 'posts#new'
  post 'new_post', to: 'posts#create'
end

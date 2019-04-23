Rails.application.routes.draw do
  root 'users#new'
  resource :users
  resource :sessions, only: [:new, :create, :destroy]
end

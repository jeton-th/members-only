Rails.application.routes.draw do
  resource :users 
  root 'users#new' 
end

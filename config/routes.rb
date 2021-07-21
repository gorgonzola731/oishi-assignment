Rails.application.routes.draw do
  resources :users
  resources :relationships, only: [:index]
end
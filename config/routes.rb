Rails.application.routes.draw do
  resources :user
  resources :relationships, only: [:create, :destroy]
end
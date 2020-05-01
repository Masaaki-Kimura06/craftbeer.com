Rails.application.routes.draw do
  devise_for :users
  root "reviews#index"
  resources :reviews, only: [:index, :new, :create, :show]
  resources :styles, only: :show
  resources :brewery, only: :show
  resources :reviewer, only: :show
  resources :users, only: [:edit, :update,]
end

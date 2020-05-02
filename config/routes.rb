Rails.application.routes.draw do
  devise_for :users
  root "reviews#index"
  resources :reviews, only: [:index, :new, :create, :show] do
    resources :comments, only: [:new, :create]
  end
  resources :styles, only: :show
  resources :brewery, only: :show
  resources :reviewers, only: [:show, :new, :create]
  resources :users, only: [:edit, :update,]
end

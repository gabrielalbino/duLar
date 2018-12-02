Rails.application.routes.draw do
  resources :answers
  resources :comments
  resources :questions
  resources :posts
  devise_for :users
  resources :categories
  get 'home/index'

  root 'home#index'
end

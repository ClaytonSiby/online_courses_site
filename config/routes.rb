Rails.application.routes.draw do
  resources :courses
  resources :categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  devise_for :users
  resources :users

  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'
  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get'
end

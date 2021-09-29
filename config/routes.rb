Rails.application.routes.draw do
  resources :courses
  resources :courses_categories
  # resources :courses
  resources :categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'
end

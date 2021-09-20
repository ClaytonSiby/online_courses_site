Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  devise_for :users

  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'
end

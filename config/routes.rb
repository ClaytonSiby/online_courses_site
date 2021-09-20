Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users

  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'
end

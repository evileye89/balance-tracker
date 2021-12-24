Rails.application.routes.draw do
  root "accounts#index"
  
  resources :bookings
  resources :balances
  resources :accounts
  resources :categories
end

Rails.application.routes.draw do
  root "bookings#index"
  
  resources :bookings
  resources :balances
end

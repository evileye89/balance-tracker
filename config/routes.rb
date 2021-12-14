Rails.application.routes.draw do
  root "bookings#index"
  
  get "/bookings", to: "bookings#index"
  get "/bookings/:id", to: "bookings#show"
end

Rails.application.routes.draw do
  root "bookings#index"
  
  get "/bookings", to: "bookings#index"
end

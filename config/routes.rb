Rails.application.routes.draw do
  get "/bookings", to: "bookings#index"
end

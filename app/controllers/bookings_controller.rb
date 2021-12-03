class BookingsController < ApplicationController
  def index
    @bookings = Booking.includes(:category).all
  end
end

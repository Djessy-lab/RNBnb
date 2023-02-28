class Admin::BookingsController < ApplicationController
  def index
    @bookings = Booking.joins(:artist).where(artist: { user: current_user })
  end
end

class Admin::BookingsController < ApplicationController
  before_action :set_bookings, only: %i[show]

  def index
    @bookings = Booking.joins(:artist).where(artist: { user: current_user })
  end

  def show
  end

  private

  def set_bookings
    @booking = Booking.find(params[:id])
  end
end

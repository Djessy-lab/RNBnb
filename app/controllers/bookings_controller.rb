class BookingsController < ApplicationController
  before_action :set_bookings, only: [:show]

  def index
    @bookings = Booking.all
  end

  def show
  end

  private
  def set_bookings
    @booking = Booking.find(params[:id])
  end
end

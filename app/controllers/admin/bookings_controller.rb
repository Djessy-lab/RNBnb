class Admin::BookingsController < ApplicationController
  before_action :set_bookings, only: %i[show validate]

  def index
    @bookings = Booking.joins(:artist).where(artist: { user: current_user })
    @past_bookings = @bookings.select { |booking| booking.date < Date.today }
    @future_bookings = @bookings.select { |booking| booking.date >= Date.today }
  end

  def validate
    if params[:decision] == 'true'
      @booking.update(validated: "approved")
    else
      @booking.update(validated: "declined")
    end
    redirect_to admin_booking_path(@booking)
  end

  def show
  end

  private

  def set_bookings
    @booking = Booking.find(params[:id])
  end
end

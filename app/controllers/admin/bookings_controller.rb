class Admin::BookingsController < ApplicationController
  before_action :set_bookings, only: %i[show validate]

  def index
    @bookings = Booking.joins(:artist).where(artist: { user: current_user })
  end

  def validate
    if params[:decision] == 'true'
      @booking.update(validated: true)
    else
      @booking.update(validated: false)
    end
    redirect_to admin_bookings_path
  end

  def show
  end

  private

  def set_bookings
    @booking = Booking.find(params[:id])
  end
end

class BookingsController < ApplicationController
  before_action :set_bookings, only: %i[show update destroy]

  def index
    @bookings = Booking.where(user: current_user)
    @past_bookings = @bookings.select { |booking| booking.date < Date.today }
    @future_bookings = @bookings.select { |booking| booking.date >= Date.today }
  end

  def show
    @artist = Artist.find(@booking.artist_id)
    @review = Review.new
  end

  def create
    @booking = Booking.new(booking_params)
    @artist = Artist.find(params[:artist_id])
    @booking.artist = @artist
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "artists/show", status: :unprocessable_entity
    end
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def set_bookings
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :artist_id)
  end
end

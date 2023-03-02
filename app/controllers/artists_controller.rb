class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_artists, only: [:show]

  def index
    if params[:query].present?
      @artists = Artist.search(params[:query], fields: [:name], suggest: true)
    else
      @artists = Artist.all
    end
  end

  def show
    @booking = Booking.new
  end

  def set_artists
    @artist = Artist.find(params[:id])
  end
end

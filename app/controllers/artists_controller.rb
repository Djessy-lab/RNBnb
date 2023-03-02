require 'rspotify'

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
    spotify_player_for(@artist)
  end


  private

  def spotify_player_for(artist)
    RSpotify.authenticate(ENV["spotify_client_id"], ENV["spotify_client_secret"] )
    @track_id = RSpotify::Artist.search(artist.name)&.first&.top_tracks(:FR)&.first&.id
  end

  def set_artists
    @artist = Artist.find(params[:id])
  end
end

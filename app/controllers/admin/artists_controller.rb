class Admin::ArtistsController < ApplicationController
  def index
    @artists = current_user.artists
    @user = current_user
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.user = current_user
    if @artist.save
      redirect_to admin_artist_path(@artist)
    else
      render :index, status: :unprocessable_entity
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :category, :price, :description, :photo)
  end
end

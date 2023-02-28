class Admin::ArtistsController < ApplicationController
  before_action :set_artist, only: %i[show edit update destroy]
  def index
    @artists = current_user.artists
    @user = current_user
    @artist = Artist.new
  end

  def show
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

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to admin_artist_path(@artist)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @artist.destroy
    redirect_to admin_artists_path, status: :see_other
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :category, :price, :description, :photo)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end
end

class PagesController < ApplicationController
   skip_before_action :authenticate_user!, only: %i[home]
   before_action :check_signed_in

  def check_signed_in
    redirect_to artists_path if signed_in?
  end

  def home
    @artists = Artist.all
  end
end

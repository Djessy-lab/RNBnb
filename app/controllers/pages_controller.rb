class PagesController < ApplicationController
   skip_before_action :authenticate_user!, only: %i[home]
  def home
    @artists = Artist.all
  end
end

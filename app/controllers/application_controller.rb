class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :notification_user
  before_action :notification_manager

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :photo])
  end

  def notification_user
    array = current_user.bookings.map do |booking|
      booking.just_validated
    end
    @notif_user = array.include?(true)
  end

  def notification_manager
    array = []
    current_user.artists.each do |artist|
      artist.bookings.each do |booking|
        array << booking.validated
      end
    end
    @notif_manager = array.include?("pending")
  end
end

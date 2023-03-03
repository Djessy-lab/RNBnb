class AddJustValidatedToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :just_validated, :boolean, default: false
  end
end

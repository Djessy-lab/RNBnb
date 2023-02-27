class AddDefaultValueToValidatedToBooking < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :validated, :boolean, default: false
  end
end

class ChangeValidatedInBookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :validated, :string, default: 'pending'
  end
end

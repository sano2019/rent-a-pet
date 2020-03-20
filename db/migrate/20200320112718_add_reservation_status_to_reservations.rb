class AddReservationStatusToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :reservation_status, :string, default: "pending"
  end
end

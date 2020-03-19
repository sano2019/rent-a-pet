class RemoveDatesFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :start_date, :string
    remove_column :reservations, :end_date, :string
    remove_column :reservations, :total_price, :integer
  end
end

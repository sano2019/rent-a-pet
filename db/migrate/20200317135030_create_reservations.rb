class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, foreign_key: true
      t.references :pet, foreign_key: true
      t.integer :total_price

      t.timestamps
    end
  end
end

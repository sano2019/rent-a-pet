class AddDatesToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :start_date, :date
    add_column :pets, :end_date, :date
    add_column :pets, :total_price, :integer
  end
end

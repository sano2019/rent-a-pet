class AddNameAndAgeToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :name, :string
    add_column :pets, :age, :integer
    add_column :pets, :price_per_day, :integer
    add_column :pets, :description, :text
  end
end

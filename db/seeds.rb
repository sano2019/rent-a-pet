# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy DB"
User.destroy_all
Pet.destroy_all
puts "Creating users"
User.create!(email: "woland@sisi.com", password: "123456")
User.create!(email: "hehe@sisi.com", password: "123456")
puts "Creating pets"
Pet.create!(name: "Sisi", user: User.first, pet_category: "cat", age: 4, description: "playful", price_per_day: 20, )
Pet.create!(name: "Rex", user: User.first, pet_category: "dog", age: 1, description: "young and playful", price_per_day: 100, )
Pet.create!(name: "Rex", user: User.last, pet_category: "cat", age: 3, description: "young and playful", price_per_day: 50, )
Pet.create!(name: "Rex", user: User.last, pet_category: "dog", age: 5, description: "dangerous", price_per_day: 10, )
puts "Creating reservations"
Reservation.create!(start_date: DateTime.parse("10/03/2020"), end_date: DateTime.parse("20/03/2020"),
 user_id: User.first.id,
 pet_id: Pet.last.id,
 total_price: 20000)
puts "Done!!!!!"

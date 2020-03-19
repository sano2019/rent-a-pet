# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "destroy DB"
User.destroy_all
Pet.destroy_all
puts "Creating users"
User.create!(email: "woland@sisi.com", password: "123456")
User.create!(email: "hehe@sisi.com", password: "123456")
puts "Creating pets"

sisi = Pet.create!(name: "Sisi", user: User.first, pet_category: "Cat", age: 4, description: "Sisi is very playful and loves to cuddle. She doesn't bite", price_per_day: 120, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584560812/CDqh3ogUZCwciM5SNsEeyhwH.jpg")
sisi.image.attach(io: file, filename: 'sisi.png', content_type: 'image/png')

baptist = Pet.create!(name: "Baptist", user: User.first, pet_category: "Dog", age: 2, description: "Baptist is as mischievous as he looks, he loves running and being in the forest", price_per_day: 200, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584628820/baptist-standaert-mx0DEnfYxic-unsplash_idfuhp.jpg")
baptist.image.attach(io: file, filename: 'baptist.png', content_type: 'image/png')

greg = Pet.create!(name: "Greg", user: User.first, pet_category: "Llama", age: 2, description: "Greg is a beautiful llama who enjoys long walks on the beach, his hair is also always on fleek", price_per_day: 300, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584628820/greg-lippert-Z5Yha3jIHnc-unsplash_mzkvcw.jpg")
greg.image.attach(io: file, filename: 'greg.png', content_type: 'image/png')

becca = Pet.create!(name: "Becca", user: User.first, pet_category: "Bear", age: 7, description: "Becca is a super cuddly brown bear. She has been with me for many years and has only tried to eat me twice", price_per_day: 300, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584628820/becca-_r6w0R6SueQ-unsplash_wjzaug.jpg")
becca.image.attach(io: file, filename: 'becca.png', content_type: 'image/png')

rana = Pet.create!(name: "Rana", user: User.first, pet_category: "Cat", age: 2, description: "She is my pride and joy, just look at that fur! Don't you just want to hug your face into her? She is really calm but loves to climb people", price_per_day: 150, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584628820/rana-sawalha-X7UR0BDz-UY-unsplash_ouq1e7.jpg")
rana.image.attach(io: file, filename: 'rana.png', content_type: 'image/png')

christopher = Pet.create!(name: "Christopher", user: User.first, pet_category: "Pig", age: 1, description: "Christopher is a micro pig, he behaves pretty much like any dog would. Very affectionate and loves treats", price_per_day: 200, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584628820/christopher-carson-i4XLJmlYit4-unsplash_lk3rtc.jpg")
christopher.image.attach(io: file, filename: 'christopher.png', content_type: 'image/png')

bruce = Pet.create!(name: "Bruce", user: User.first, pet_category: "Dog", age: 3, description: "Brucie is a really cute pug, although his eyes look like they might pop out at any time, I assure you they won't. He loves running but chances are you are faster than him because of his short legs.", price_per_day: 150, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584628819/bruce-galpin-h7oZAHnS9_E-unsplash_wmhxny.jpg")
bruce.image.attach(io: file, filename: 'bruce.png', content_type: 'image/png')

mikael = Pet.create!(name: "Mikael", user: User.first, pet_category: "Horse", age: 7, description: "Mikael loves going for long walks, preferably when it is sunny. After a long day in the forest, he usually dines with me in the living room and then curls up on the foot end of my bed for sleep.", price_per_day: 500, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584628821/mikael-kristenson-EXuKQaf3Ei8-unsplash_mevyqq.jpg")
mikael.image.attach(io: file, filename: 'mikael.png', content_type: 'image/png')

jamie = Pet.create!(name: "Jamie", user: User.first, pet_category: "Dog", age: 3, description: "Jamie is a young doggo, she loves reading and is really good at it. She once won the national spelling bee.", price_per_day: 200, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584628821/jamie-street-Zqy-x7K5Qcg-unsplash_sgkbdz.jpg")
jamie.image.attach(io: file, filename: 'jamie.png', content_type: 'image/png')

david = Pet.create!(name: "David", user: User.first, pet_category: "Dragon", age: 34, description: "David forced me to write he is a dragon on here, but in reality he is a lizard. Be that as it may, he is a great companion and loves going out while sitting in your neck. He is also a great wingman.", price_per_day: 150, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584628821/david-clode-cqlI1Xpki8E-unsplash_z1zskz.jpg")
david.image.attach(io: file, filename: 'david.png', content_type: 'image/png')

yegor = Pet.create!(name: "Yegor", user: User.first, pet_category: "Turtle", age: 98, description: "Yegor is the father of 4 very famous turtles. Leonardo, Donatello, Michelangelo and Raphael. They are his pride and joy, although he hasn't seen them in many years. Yegor loves eating giant crops of lettuce", price_per_day: 300, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584628821/yegor-denisov-ZCt2ayQCre8-unsplash_ab9uo7.jpg")
yegor.image.attach(io: file, filename: 'yegor.png', content_type: 'image/png')

bubba = Pet.create!(name: "Bubba", user: User.first, pet_category: "Fish", age: 69, description: "Bubba is a real piece of work. After a long stretch in the gangland territory, he is now (semi) retired from his life of crime. He is still hard and will win any stare down you put him in. Foster him at your own risk, he is very obscene, but a heart of gold.", price_per_day: 200, )
file = URI.open("https://res.cloudinary.com/sano2019/image/upload/v1584563660/M6p8rz1yZQpfZh4kSAPw1y5w.jpg")
bubba.image.attach(io: file, filename: 'bubba.png', content_type: 'image/png')

puts "Creating reservations"
Reservation.create!(start_date: DateTime.parse("10/03/2020"), end_date: DateTime.parse("20/03/2020"),
 user_id: User.first.id,
 pet_id: Pet.last.id,
 total_price: 20000)

puts "Done!!!!!"




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating some restaurants..."
10.times do
  restaurant = Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
  puts "Restaurant with id #{restaurant.id} was created"

end

puts "Created #{Restaurant.count} restaurants"

# Restaurant.destroy_all
# restaurant1 = Restaurant.create!(name: "hako", address: "berlin", category: "japanese" )
# restaurant2 = Restaurant.create!(name: "trattoria", address: "berlin", category: "italian" )
# restaurant3 = Restaurant.create!(name: "timhortons", address: "toronto", category: "belgian" )
# restaurant4 = Restaurant.create!(name: "zola", address: "berlin", category: "italian" )
# restaurant5 = Restaurant.create!(name: "something", address: "paris", category: "french" )
# 
# puts "Created #{Restaurant.count} restaurants"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

5.times do
  name = Faker::Name.name
  address = Faker::Address.full_address
  description = Faker::Lorem.words(number: 20)
  price_per_night = Faker::Number.between(from: 50.0, to: 500.0).round(2)
  number_of_guests = Faker::Number.between(from: 1, to: 8)
  flat = Flat.create!(name: name, address: address, description: description, price_per_night: price_per_night, number_of_guests: number_of_guests)
  puts "Creating #{flat.name}"
end

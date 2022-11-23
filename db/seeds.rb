# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
4.times do
  name = Faker::Lorem.sentence
  address = Faker::Address.full_address
  description = Faker::Lorem.paragraph
  price = (50..100).to_a.sample
  guests = (1..10).to_a.sample
  flat = Flat.new(name: name, address: address, description: description, price_per_night: price, number_of_guests: guests)
  flat.save
end

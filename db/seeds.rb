# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'start seed'
10.times do
  Flat.create!(
    name: Faker::Commerce.vendor,
    address: Faker::Address.full_address,
    description: Faker::Commerce.department(max: 5),
    price_per_night: (50..200).to_a.sample,
    number_of_guests: (2..12).to_a.sample
  )
  puts 'new flat'
end
puts 'finish seed'

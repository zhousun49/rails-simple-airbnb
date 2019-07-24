# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all if Rails.env.development?


Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  img: 'http://lorempixel.com/640/480/'
)


5.times do
  url = 'http://lorempixel.com/640/480/'
  Flat.create({ name: Faker::Company.bs, address: Faker::Address.street_address, price_per_night: rand(50..100), number_of_guests: rand(4..10), description: Faker::Quotes::Shakespeare.as_you_like_it_quote, img: url })
end

p 'created'

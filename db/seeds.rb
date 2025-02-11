# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
puts 'Creating 5 fake restaurants...'
Restaurant.destroy_all
restaurant_category = [ "chinese", "italian", "japanese", "french", "belgian" ]

# restaurant1 = Restaurant.new(
#       name: "Le Petit Pois",
#       adress: "12, rue de la loire, 75002 Paris",
#       phone_number: "01.42.35.36.24",
#       rating: Random.rand(0..5),
#       category: restaurant_category[rand(restaurant_category.length)]
#     )
#     restaurant1.save!


5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    rating: Random.rand(0..5),
    category: restaurant_category[rand(restaurant_category.length)]
  )
  restaurant.save!
end

puts 'Finished!'


# Faker::Restaurant.review

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



5.times do
  restaurant1 = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: restaurant_category[rand(restaurant_category.length)]
  )
  restaurant1.save!
  comment1 = Review.new(content: Faker::Restaurant.review, rating: Random.rand(0..5))
  comment1.restaurant = restaurant1
  comment1.save!
  comment2 = Review.new(content: Faker::Restaurant.review, rating: Random.rand(0..5))
  comment2.restaurant = restaurant1
  comment2.save!
end

puts 'Finished!'

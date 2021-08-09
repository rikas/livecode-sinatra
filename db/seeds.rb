require 'faker'

puts "Destroying all restaurants..."
Restaurant.destroy_all

RESTAURANT_NUM = 10

puts "Creating #{RESTAURANT_NUM} restaurants..."
RESTAURANT_NUM.times do
  Restaurant.create!(
    name: Faker::Coffee.blend_name,
    city: Faker::Address.city,
    votes: rand(1..100)
  )
end

puts "All done 😎"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# restaurant = ["Chez ", "Le ", "Good Old ", "Tasty "]

# 20.times do |i|
#   Restaurant.create(name: restaurant.sample + Faker::Name.first_name, city: Faker::Address.city, photo_url:'http://library.brown.edu/cds/portraits/images/large_bp' + (i+1).to_s + '.jpg')
# end

Review.create(body: "c génial", restaurant_id: 1)
require 'faker'

puts 'Cleaning database...'
City.destroy_all
User.destroy_all
Shop.destroy_all
Event.destroy_all
ShopPhoto.destroy_all
EventPhoto.destroy_all


puts 'Creating Fontainebleau'
fontainebleau = City.create!(name: "Fontainebleau")

puts 'Creating 20 shops owner'
user_name = 1
Users = []
20.times do
  user = User.new(
    email: "#{user_name}@gmail.com",
    password: "hexagon"
    )
  Users << user
  user.save!
  user_name += 1
end

puts 'Creating 20 shops'
counter = 0
Shops = []
20.times do
  shop = Shop.new(
    name: Faker::FunnyName.name,
    address: Faker::Address.street_name,
    description: Faker::Lorem.paragraph(2),
    category: Shop::CATEGORIES[rand(Shop::CATEGORIES.length)],
    user: Users[counter],
    city: City.find_by(name: "Fontainebleau")
    )
  shop.save!
  counter += 1
  Shops << shop
end

puts 'Creating 20 events'
counter = 0
Events = []
20.times do
  event = Event.new(
    name: Faker::FunnyName.name,
    description: Faker::Lorem.paragraph(2),
    category: Event::EVENTS[rand(Event::EVENTS.length)],
    shop: Shops[counter],
    )
  event.save!
  counter += 1
  Events << event
end

puts 'Creating 20 shop_photos'
counter = 0
20.times do
  shop_photo = ShopPhoto.new(
    shop: Shops[counter]
    )
  shop_photo.remote_photo_url = "https://picsum.photos/200/300"
  shop_photo.save!
  counter += 1
end

puts 'Creating 20 event_photos'
counter = 0
20.times do
  event_photo = EventPhoto.new(
    event: Events[counter]
    )
  event_photo.remote_photo_url = "https://picsum.photos/200/300"
  event_photo.save!
  counter += 1
end

puts 'Finished!'

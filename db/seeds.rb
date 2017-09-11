require 'faker'

5.times do
  Restaurant.create(name: Faker::Bank.name, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip, description: Faker::HeyArnold.quote)
end

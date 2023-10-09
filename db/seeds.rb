#db/seeds.rb
require 'faker'
puts "Seeding data to the database ...."

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Client.destroy_all 

10.times do
    @client = Client.create!(
        name: Faker::Name.unique.name_with_middle,
        address: Faker::Address.unique.street_address,
        company: Faker::Company.unique.name,
        phone_number: Faker::PhoneNumber.unique.cell_phone_with_country_code,
        ) 
    end

puts "Seeding operation complete !"
require 'faker'

FactoryBot.define do
  factory :user do
    name      Faker::Name.name
    address   Faker::Address.street_address
    username  Faker::StarWars.character
    password  Faker::Internet.password
    tel_num   Faker::PhoneNumber.phone_number
    ssn       Faker::Number.number(9)
    url       Faker::Internet.domain_name
    birthday  Faker::Date.birthday
    fav_color Faker::Color.color_name
  end
end

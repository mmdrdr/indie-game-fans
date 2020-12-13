FactoryBot.define do
  factory :contact do
    name { Faker::Lorem.characters(number: 10) }
    email { Faker::Internet.email }
    content { Faker::Lorem.characters(number: 20) }
  end
end

FactoryBot.define do
  factory :game do
    title { Faker::Lorem.characters(number:5) }
    introduction { Faker::Lorem.characters(number:20) }
    user
  end
end
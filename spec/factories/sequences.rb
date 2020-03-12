FactoryBot.define do
  sequence(:email) { Faker::Internet.email }
  sequence(:first_name) { Faker::Name.first_name }
  sequence(:last_name) { Faker::Name.last_name }
  sequence(:title) { |n| "#{Faker::Lorem.words} #{n}" }
end

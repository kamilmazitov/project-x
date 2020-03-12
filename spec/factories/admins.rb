FactoryBot.define do
  factory :admin do
    email
    first_name
    last_name
    password { "123456" }
    password_confirmation { password }
  end
end

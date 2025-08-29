# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email }
    password { "password123" }
    password_confirmation { "password123" }

    trait :admin do
      role { :admin }
    end

    trait :with_profile do
      after(:create) do |user|
        create(:profile, user: user)
      end
    end
  end
end

FactoryBot.define do
  factory :booking do
    name { "MyString" }
    email { "MyString" }
    phone { "MyString" }
    tour_date { "2025-08-16" }
    number_of_people { 1 }
    special_requests { "MyText" }
  end
end

FactoryBot.define do
  factory :booking do
    name { "MyString" }
    email { "MyString" }
    phone { "MyString" }
    tour_type { "MyString" }
    start_date { "2025-08-15" }
    end_date { "2025-08-15" }
    special_requests { "MyText" }
  end
end

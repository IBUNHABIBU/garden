FactoryBot.define do
  factory :route do
    name { "MyString" }
    days { 1 }
    price { "9.99" }
    difficulty { "MyString" }
    short_description { "MyText" }
    image { nil }
  end
end

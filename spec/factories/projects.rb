FactoryBot.define do
  factory :project do
    title { "MyString" }
    description { "MyText" }
    featured_image { "MyString" }
    published { false }
    position { 1 }
  end
end

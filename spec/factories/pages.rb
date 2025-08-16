FactoryBot.define do
  factory :page do
    hero_title { "MyString" }
    hero_subtitle { "MyText" }
    hero_image { nil }
    about_title { "MyString" }
    about_content { "MyText" }
    about_image { nil }
    contact_address { "MyText" }
    contact_phone { "MyString" }
    contact_email { "MyString" }
  end
end

FactoryBot.define do
  factory :recipe do
    user { nil }
    title { "MyString" }
    content { "MyText" }
    image { "MyString" }
  end
end

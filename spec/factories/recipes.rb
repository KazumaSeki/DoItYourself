FactoryBot.define do
  factory :recipe do
    user
    title  {"テストタイトル"}
    content {"テストテキスト"}
    created_at {"2021-04-03T00:00:00"}
    updated_at {"2021-04-03T00:00:00"}
  end
end

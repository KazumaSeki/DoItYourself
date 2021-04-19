FactoryBot.define do
  factory :user do
    username {"テスト太郎"}
    email {"test@test.com"}
    profile {"テストプロフィール"}
    password {"test12"}
    password_confirmation {"test12"}
  end
end

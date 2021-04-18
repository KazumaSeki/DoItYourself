FactoryBot.define do
  factory :user do
    username "テスト太郎"
    email "test@test.com"
    profile "テストプロフィール"
    profile_image Rack::Test::UploadedFile.new(File.join("#{Rails.root}/spec/support/sample1.png"))
    password "test12"
    password_confirmation "test12"
  end
end

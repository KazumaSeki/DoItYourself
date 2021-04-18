FactoryBot.define do
  factory :recipe do
    user
    title  "テストタイトル"
    content "テストテキスト"
    image Rack::Test::UploadedFile.new(File.join("#{Rails.root}/spec/support/sample2.png"))
    created_at "2021-04-03T00:00:00"
    updated_at "2021-04-03T00:00:00"
  end
end

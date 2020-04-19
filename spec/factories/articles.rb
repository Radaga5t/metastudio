FactoryBot.define do
  factory :article do
    title { "MyString" }
    source_title { "MyString" }
    source_url { "MyString" }
    body { "MyText" }
    author { nil }
    category { nil }
    published { false }
  end
end

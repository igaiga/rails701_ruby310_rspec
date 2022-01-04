FactoryBot.define do
  factory :variation do
    kind { "PDF" } # "PDF" に変更
    book { nil } # デフォルトのまま ※1
  end

  trait :with_variations do
    after(:create) do |book|
      book.variations.create!(kind: "paper book")
    end
  end
end

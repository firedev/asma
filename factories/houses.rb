FactoryBot.define do
  factory :house do
    sequence(:title) { |n| "House #{n}" }
  end
end

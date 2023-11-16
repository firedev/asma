FactoryBot.define do
  factory :car do
    sequence(:title) { |n| "Car #{n}" }
  end
end

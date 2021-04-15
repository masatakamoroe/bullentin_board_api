FactoryBot.define do
  factory :topic do
    user
    title { Faker::Book.title }
    text { Faker::Book.genre }
  end
end

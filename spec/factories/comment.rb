FactoryBot.define do
  factory :comment do
    text { Faker::Book.title }
    topic
  end
end

FactoryGirl.define do
  factory :comment do
    commenter "mike"
    sequence(:body) { |n| "comment body #{n}"}#Блок, лямбда выражение
  end
end
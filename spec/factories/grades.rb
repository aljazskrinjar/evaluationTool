FactoryGirl.define do
  factory :grade do
    value    { Faker::Number.between(0, 2) }
    date Date.today
    remark "just some fancy text"
  end
end

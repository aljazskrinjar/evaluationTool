FactoryGirl.define do
  factory :student do
    name  { Faker::Name.first_name }
    surname   { Faker::Name.last_name }
    group              { build(:group) }
  end
end

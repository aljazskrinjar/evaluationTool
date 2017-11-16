FactoryGirl.define do
  factory :group do
    name  { Faker::Name.first_name }
    start_date  Date.today-2
    end_date    Date.today
  end
end

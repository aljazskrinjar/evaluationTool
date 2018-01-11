FactoryGirl.define do
  factory :student do
    name  { Faker::Name.first_name }
    surname   { Faker::Name.last_name }
    group              { build(:group) }
    photo   "https://codaisseur-production.s3.amazonaws.com/uploads/student_bio/picture/144/tristan-jpg-19706286e465104708e9c06e594f70bd.png"
  end
end

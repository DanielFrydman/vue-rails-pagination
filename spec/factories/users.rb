# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    mother_first_name { Faker::Name.female_first_name }
    father_first_name { Faker::Name.male_first_name }
    birthday { Faker::Date.birthday(min_age: 18, max_age: 65) }
  end
end

FactoryBot.define do
  factory :result do
    result_value { "MyString" }
    date { "2024-10-05" }
    section { nil }
    athlete_profile { nil }
  end
end

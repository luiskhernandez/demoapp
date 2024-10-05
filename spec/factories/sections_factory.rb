FactoryBot.define do
  factory :section do
    name { "MyString" }
    order { 1 }
    content { "MyText" }
    expected_result_type { 1 }
    workout { nil }
  end
end

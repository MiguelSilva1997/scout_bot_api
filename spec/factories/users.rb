FactoryBot.define do
  factory :user do
    first_name "MyString"
    last_name "MyString"
    email "test"
    password_digest "password"
    phone_number "MyString"
    role 0
  end
end

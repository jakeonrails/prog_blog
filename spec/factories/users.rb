# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username  'username'
    email     'test@test.com'
    password  'password'
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    markdown "MyText"
    html "MyText"
    published_at "2014-07-17 21:58:05"
    user nil
  end
end

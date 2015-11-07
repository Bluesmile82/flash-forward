# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content do
    comment "MyString"
    order 1
    category "MyString"
  end
end

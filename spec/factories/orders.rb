# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    cart 1
    customer_name "MyString"
    email "MyString"
    status "MyString"
    zipcode "MyString"
    expdate "MyString"
    ccv "MyString"
    ccnumber "MyString"
  end
end

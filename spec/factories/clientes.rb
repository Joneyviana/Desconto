# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cliente do
    nome "MyString"
    data_de_nascimento "MyString"
    email "MyString"
  end
end

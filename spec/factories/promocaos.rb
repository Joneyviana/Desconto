# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :promocao do
    nome "MyString"
    data_inicio "2014-02-12"
    data_fim "2014-02-12"
    porcentagem 1.5
  end
end

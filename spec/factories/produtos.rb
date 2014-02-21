# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :produto do
    nome "MyString"
    descricao "MyString"
    preco 1.5
    loja nil
    promocao nil
  end
end

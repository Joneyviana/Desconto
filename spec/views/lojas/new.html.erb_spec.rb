require 'spec_helper'

describe "lojas/new" do
  before(:each) do
    assign(:loja, stub_model(Loja,
      :nome => "MyString",
      :descricao => "MyString",
      :cnpj => 1
    ).as_new_record)
  end

  it "renders new loja form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lojas_path, "post" do
      assert_select "input#loja_nome[name=?]", "loja[nome]"
      assert_select "input#loja_descricao[name=?]", "loja[descricao]"
      assert_select "input#loja_cnpj[name=?]", "loja[cnpj]"
    end
  end
end

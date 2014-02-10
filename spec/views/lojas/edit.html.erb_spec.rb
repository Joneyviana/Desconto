require 'spec_helper'

describe "lojas/edit" do
  before(:each) do
    @loja = assign(:loja, stub_model(Loja,
      :nome => "MyString",
      :descricao => "MyString",
      :cnpj => 1
    ))
  end

  it "renders the edit loja form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", loja_path(@loja), "post" do
      assert_select "input#loja_nome[name=?]", "loja[nome]"
      assert_select "input#loja_descricao[name=?]", "loja[descricao]"
      assert_select "input#loja_cnpj[name=?]", "loja[cnpj]"
    end
  end
end

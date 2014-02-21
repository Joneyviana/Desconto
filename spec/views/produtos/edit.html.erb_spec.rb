require 'spec_helper'

describe "produtos/edit" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :nome => "MyString",
      :descricao => "MyString",
      :preco => 1.5,
      :loja => nil,
      :promocao => nil
    ))
  end

  it "renders the edit produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", produto_path(@produto), "post" do
      assert_select "input#produto_nome[name=?]", "produto[nome]"
      assert_select "input#produto_descricao[name=?]", "produto[descricao]"
      assert_select "input#produto_preco[name=?]", "produto[preco]"
      assert_select "input#produto_loja[name=?]", "produto[loja]"
      assert_select "input#produto_promocao[name=?]", "produto[promocao]"
    end
  end
end

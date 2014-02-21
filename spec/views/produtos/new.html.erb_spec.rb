require 'spec_helper'

describe "produtos/new" do
  before(:each) do
    assign(:produto, stub_model(Produto,
      :nome => "MyString",
      :descricao => "MyString",
      :preco => 1.5,
      :loja => nil,
      :promocao => nil
    ).as_new_record)
  end

  it "renders new produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", produtos_path, "post" do
      assert_select "input#produto_nome[name=?]", "produto[nome]"
      assert_select "input#produto_descricao[name=?]", "produto[descricao]"
      assert_select "input#produto_preco[name=?]", "produto[preco]"
      assert_select "input#produto_loja[name=?]", "produto[loja]"
      assert_select "input#produto_promocao[name=?]", "produto[promocao]"
    end
  end
end

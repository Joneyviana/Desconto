require 'spec_helper'

describe "promocaos/edit" do
  before(:each) do
    @promocao = assign(:promocao, stub_model(Promocao,
      :nome => "MyString",
      :porcentagem => 1.5
    ))
  end

  it "renders the edit promocao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", promocao_path(@promocao), "post" do
      assert_select "input#promocao_nome[name=?]", "promocao[nome]"
      assert_select "input#promocao_porcentagem[name=?]", "promocao[porcentagem]"
    end
  end
end

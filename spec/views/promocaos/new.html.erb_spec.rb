require 'spec_helper'

describe "promocaos/new" do
  before(:each) do
    assign(:promocao, stub_model(Promocao,
      :nome => "MyString",
      :porcentagem => 1.5
    ).as_new_record)
  end

  it "renders new promocao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", promocaos_path, "post" do
      assert_select "input#promocao_nome[name=?]", "promocao[nome]"
      assert_select "input#promocao_porcentagem[name=?]", "promocao[porcentagem]"
    end
  end
end

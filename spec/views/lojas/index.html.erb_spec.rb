require 'spec_helper'

describe "lojas/index" do
  before(:each) do
    assign(:lojas, [
      stub_model(Loja,
        :nome => "Nome",
        :descricao => "Descricao",
        :cnpj => 1
      ),
      stub_model(Loja,
        :nome => "Nome",
        :descricao => "Descricao",
        :cnpj => 1
      )
    ])
  end

  it "renders a list of lojas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

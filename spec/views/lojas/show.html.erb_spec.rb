require 'spec_helper'

describe "lojas/show" do
  before(:each) do
    @loja = assign(:loja, stub_model(Loja,
      :nome => "Nome",
      :descricao => "Descricao",
      :cnpj => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Descricao/)
    rendered.should match(/1/)
  end
end

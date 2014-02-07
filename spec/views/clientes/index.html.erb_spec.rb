require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :nome => "Nome",
        :data_de_nascimento => "Data_de_nascimento",
        :email => "Email"
      ),
      stub_model(Cliente,
        :nome => "Nome",
        :data_de_nascimento => "Data_de_nascimento",
        :email => "Email"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Data_de_nascimento".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end

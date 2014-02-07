require 'spec_helper'

describe "clientes/new" do
  before(:each) do
    assign(:cliente, stub_model(Cliente,
      :nome => "MyString",
      :data_de_nascimento => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clientes_path, "post" do
      assert_select "input#cliente_nome[name=?]", "cliente[nome]"
      assert_select "input#cliente_data_de_nascimento[name=?]", "cliente[data_de_nascimento]"
      assert_select "input#cliente_email[name=?]", "cliente[email]"
    end
  end
end

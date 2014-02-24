require 'spec_helper'

describe "preferencia/new" do
  before(:each) do
    assign(:preferencium, stub_model(Preferencium,
      :produto => nil,
      :cliente => nil
    ).as_new_record)
  end

  it "renders new preferencium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", preferencia_path, "post" do
      assert_select "input#preferencium_produto[name=?]", "preferencium[produto]"
      assert_select "input#preferencium_cliente[name=?]", "preferencium[cliente]"
    end
  end
end

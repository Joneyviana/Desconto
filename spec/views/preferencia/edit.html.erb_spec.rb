require 'spec_helper'

describe "preferencia/edit" do
  before(:each) do
    @preferencium = assign(:preferencium, stub_model(Preferencium,
      :produto => nil,
      :cliente => nil
    ))
  end

  it "renders the edit preferencium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", preferencium_path(@preferencium), "post" do
      assert_select "input#preferencium_produto[name=?]", "preferencium[produto]"
      assert_select "input#preferencium_cliente[name=?]", "preferencium[cliente]"
    end
  end
end

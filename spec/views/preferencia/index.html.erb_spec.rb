require 'spec_helper'

describe "preferencia/index" do
  before(:each) do
    assign(:preferencia, [
      stub_model(Preferencium,
        :produto => nil,
        :cliente => nil
      ),
      stub_model(Preferencium,
        :produto => nil,
        :cliente => nil
      )
    ])
  end

  it "renders a list of preferencia" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

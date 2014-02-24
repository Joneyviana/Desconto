require 'spec_helper'

describe "preferencia/show" do
  before(:each) do
    @preferencium = assign(:preferencium, stub_model(Preferencium,
      :produto => nil,
      :cliente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end

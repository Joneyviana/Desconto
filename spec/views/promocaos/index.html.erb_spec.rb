require 'spec_helper'

describe "promocaos/index" do
  before(:each) do
    assign(:promocaos, [
      stub_model(Promocao,
        :nome => "Nome",
        :porcentagem => 1.5
      ),
      stub_model(Promocao,
        :nome => "Nome",
        :porcentagem => 1.5
      )
    ])
  end

  it "renders a list of promocaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end

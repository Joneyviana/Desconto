require 'spec_helper'

describe "promocaos/show" do
  before(:each) do
    @promocao = assign(:promocao, stub_model(Promocao,
      :nome => "Nome",
      :porcentagem => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/1.5/)
  end
end

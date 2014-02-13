require 'spec_helper'

describe "Promocaos" do
  describe "GET /promocaos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get promocaos_path
      response.status.should be(200)
    end
  end
end

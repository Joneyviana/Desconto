require "spec_helper"

describe PromocaosController do
  describe "routing" do

    it "routes to #index" do
      get("/promocaos").should route_to("promocaos#index")
    end

    it "routes to #new" do
      get("/promocaos/new").should route_to("promocaos#new")
    end

    it "routes to #show" do
      get("/promocaos/1").should route_to("promocaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/promocaos/1/edit").should route_to("promocaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/promocaos").should route_to("promocaos#create")
    end

    it "routes to #update" do
      put("/promocaos/1").should route_to("promocaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/promocaos/1").should route_to("promocaos#destroy", :id => "1")
    end

  end
end

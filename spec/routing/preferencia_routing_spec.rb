require "spec_helper"

describe PreferenciaController do
  describe "routing" do

    it "routes to #index" do
      get("/preferencia").should route_to("preferencia#index")
    end

    it "routes to #new" do
      get("/preferencia/new").should route_to("preferencia#new")
    end

    it "routes to #show" do
      get("/preferencia/1").should route_to("preferencia#show", :id => "1")
    end

    it "routes to #edit" do
      get("/preferencia/1/edit").should route_to("preferencia#edit", :id => "1")
    end

    it "routes to #create" do
      post("/preferencia").should route_to("preferencia#create")
    end

    it "routes to #update" do
      put("/preferencia/1").should route_to("preferencia#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/preferencia/1").should route_to("preferencia#destroy", :id => "1")
    end

  end
end

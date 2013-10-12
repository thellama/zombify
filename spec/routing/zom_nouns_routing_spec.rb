require "spec_helper"

describe ZomNounsController do
  describe "routing" do

    it "routes to #index" do
      get("/zom_nouns").should route_to("zom_nouns#index")
    end

    it "routes to #new" do
      get("/zom_nouns/new").should route_to("zom_nouns#new")
    end

    it "routes to #show" do
      get("/zom_nouns/1").should route_to("zom_nouns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/zom_nouns/1/edit").should route_to("zom_nouns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/zom_nouns").should route_to("zom_nouns#create")
    end

    it "routes to #update" do
      put("/zom_nouns/1").should route_to("zom_nouns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/zom_nouns/1").should route_to("zom_nouns#destroy", :id => "1")
    end

  end
end

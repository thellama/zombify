require "spec_helper"

describe NounPhrasesController do
  describe "routing" do

    it "routes to #index" do
      get("/noun_phrases").should route_to("noun_phrases#index")
    end

    it "routes to #new" do
      get("/noun_phrases/new").should route_to("noun_phrases#new")
    end

    it "routes to #show" do
      get("/noun_phrases/1").should route_to("noun_phrases#show", :id => "1")
    end

    it "routes to #edit" do
      get("/noun_phrases/1/edit").should route_to("noun_phrases#edit", :id => "1")
    end

    it "routes to #create" do
      post("/noun_phrases").should route_to("noun_phrases#create")
    end

    it "routes to #update" do
      put("/noun_phrases/1").should route_to("noun_phrases#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/noun_phrases/1").should route_to("noun_phrases#destroy", :id => "1")
    end

  end
end

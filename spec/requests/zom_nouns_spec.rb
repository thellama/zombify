require 'spec_helper'

describe "ZomNouns" do
  describe "GET /zom_nouns" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get zom_nouns_path
      response.status.should be(200)
    end
  end
end

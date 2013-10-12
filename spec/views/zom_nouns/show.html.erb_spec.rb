require 'spec_helper'

describe "zom_nouns/show" do
  before(:each) do
    @zom_noun = assign(:zom_noun, stub_model(ZomNoun,
      :zom_noun => "Zom Noun"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zom Noun/)
  end
end

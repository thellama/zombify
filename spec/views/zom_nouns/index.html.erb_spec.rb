require 'spec_helper'

describe "zom_nouns/index" do
  before(:each) do
    assign(:zom_nouns, [
      stub_model(ZomNoun,
        :zom_noun => "Zom Noun"
      ),
      stub_model(ZomNoun,
        :zom_noun => "Zom Noun"
      )
    ])
  end

  it "renders a list of zom_nouns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zom Noun".to_s, :count => 2
  end
end

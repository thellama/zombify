require 'spec_helper'

describe "noun_phrases/index" do
  before(:each) do
    assign(:noun_phrases, [
      stub_model(NounPhrase,
        :noun_phrase => "Noun Phrase"
      ),
      stub_model(NounPhrase,
        :noun_phrase => "Noun Phrase"
      )
    ])
  end

  it "renders a list of noun_phrases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Noun Phrase".to_s, :count => 2
  end
end

require 'spec_helper'

describe "noun_phrases/show" do
  before(:each) do
    @noun_phrase = assign(:noun_phrase, stub_model(NounPhrase,
      :noun_phrase => "Noun Phrase"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Noun Phrase/)
  end
end

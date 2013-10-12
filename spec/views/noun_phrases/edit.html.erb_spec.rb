require 'spec_helper'

describe "noun_phrases/edit" do
  before(:each) do
    @noun_phrase = assign(:noun_phrase, stub_model(NounPhrase,
      :noun_phrase => "MyString"
    ))
  end

  it "renders the edit noun_phrase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", noun_phrase_path(@noun_phrase), "post" do
      assert_select "input#noun_phrase_noun_phrase[name=?]", "noun_phrase[noun_phrase]"
    end
  end
end

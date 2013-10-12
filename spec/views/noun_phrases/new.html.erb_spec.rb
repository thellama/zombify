require 'spec_helper'

describe "noun_phrases/new" do
  before(:each) do
    assign(:noun_phrase, stub_model(NounPhrase,
      :noun_phrase => "MyString"
    ).as_new_record)
  end

  it "renders new noun_phrase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", noun_phrases_path, "post" do
      assert_select "input#noun_phrase_noun_phrase[name=?]", "noun_phrase[noun_phrase]"
    end
  end
end

require 'spec_helper'

describe "zom_nouns/edit" do
  before(:each) do
    @zom_noun = assign(:zom_noun, stub_model(ZomNoun,
      :zom_noun => "MyString"
    ))
  end

  it "renders the edit zom_noun form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", zom_noun_path(@zom_noun), "post" do
      assert_select "input#zom_noun_zom_noun[name=?]", "zom_noun[zom_noun]"
    end
  end
end

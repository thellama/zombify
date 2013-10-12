require 'spec_helper'

describe "zom_nouns/new" do
  before(:each) do
    assign(:zom_noun, stub_model(ZomNoun,
      :zom_noun => "MyString"
    ).as_new_record)
  end

  it "renders new zom_noun form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", zom_nouns_path, "post" do
      assert_select "input#zom_noun_zom_noun[name=?]", "zom_noun[zom_noun]"
    end
  end
end

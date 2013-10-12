require 'spec_helper'

describe "micro_posts/new" do
  before(:each) do
    assign(:micro_post, stub_model(MicroPost,
      :micro_post => "MyText",
      :user_name => "MyString"
    ).as_new_record)
  end

  it "renders new micro_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", micro_posts_path, "post" do
      assert_select "textarea#micro_post_micro_post[name=?]", "micro_post[micro_post]"
      assert_select "input#micro_post_user_name[name=?]", "micro_post[user_name]"
    end
  end
end

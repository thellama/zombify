require 'spec_helper'

describe "microposts/new" do
  before(:each) do
    assign(:micropost, stub_model(Micropost,
      :user_id => 1,
      :post => "MyText"
    ).as_new_record)
  end

  it "renders new micropost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", microposts_path, "post" do
      assert_select "input#micropost_user_id[name=?]", "micropost[user_id]"
      assert_select "textarea#micropost_post[name=?]", "micropost[post]"
    end
  end
end

require 'spec_helper'

describe "micro_posts/index" do
  before(:each) do
    assign(:micro_posts, [
      stub_model(MicroPost,
        :micro_post => "MyText",
        :user_name => "User Name"
      ),
      stub_model(MicroPost,
        :micro_post => "MyText",
        :user_name => "User Name"
      )
    ])
  end

  it "renders a list of micro_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
  end
end

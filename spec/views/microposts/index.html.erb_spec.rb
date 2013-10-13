require 'spec_helper'

describe "microposts/index" do
  before(:each) do
    assign(:microposts, [
      stub_model(Micropost,
        :user_id => 1,
        :post => "MyText"
      ),
      stub_model(Micropost,
        :user_id => 1,
        :post => "MyText"
      )
    ])
  end

  it "renders a list of microposts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

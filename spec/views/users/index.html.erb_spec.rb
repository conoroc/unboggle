require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :profile_name => "Profile Name",
        :email => "Email",
        :resource_count => 1,
        :admin => false,
        :subscribe => false
      ),
      stub_model(User,
        :name => "Name",
        :profile_name => "Profile Name",
        :email => "Email",
        :resource_count => 1,
        :admin => false,
        :subscribe => false
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Profile Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

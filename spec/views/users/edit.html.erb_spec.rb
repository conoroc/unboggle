require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :profile_name => "MyString",
      :email => "MyString",
      :resource_count => 1,
      :admin => false,
      :subscribe => false
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_profile_name", :name => "user[profile_name]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_resource_count", :name => "user[resource_count]"
      assert_select "input#user_admin", :name => "user[admin]"
      assert_select "input#user_subscribe", :name => "user[subscribe]"
    end
  end
end

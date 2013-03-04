require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :profile_name => "MyString",
      :email => "MyString",
      :resource_count => 1,
      :admin => false,
      :subscribe => false
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_profile_name", :name => "user[profile_name]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_resource_count", :name => "user[resource_count]"
      assert_select "input#user_admin", :name => "user[admin]"
      assert_select "input#user_subscribe", :name => "user[subscribe]"
    end
  end
end

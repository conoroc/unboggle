require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :profile_name => "Profile Name",
      :email => "Email",
      :resource_count => 1,
      :admin => false,
      :subscribe => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Profile Name/)
    rendered.should match(/Email/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end

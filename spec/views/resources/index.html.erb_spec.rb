require 'spec_helper'

describe "resources/index" do
  before(:each) do
    assign(:resources, [
      stub_model(Resource,
        :user_id => 1,
        :title => "Title",
        :source => "Source",
        :categ_a => "Categ A",
        :categ_b => "Categ B",
        :level => "Level",
        :year => 2,
        :cost => "Cost",
        :type => "Type",
        :rating => 3,
        :link => "Link",
        :keywords => "Keywords",
        :description => "MyText"
      ),
      stub_model(Resource,
        :user_id => 1,
        :title => "Title",
        :source => "Source",
        :categ_a => "Categ A",
        :categ_b => "Categ B",
        :level => "Level",
        :year => 2,
        :cost => "Cost",
        :type => "Type",
        :rating => 3,
        :link => "Link",
        :keywords => "Keywords",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of resources" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "Categ A".to_s, :count => 2
    assert_select "tr>td", :text => "Categ B".to_s, :count => 2
    assert_select "tr>td", :text => "Level".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Cost".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Keywords".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

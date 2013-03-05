require 'spec_helper'

describe "resources/new" do
  before(:each) do
    assign(:resource, stub_model(Resource,
      :user_id => 1,
      :title => "MyString",
      :source => "MyString",
      :categ_a => "MyString",
      :categ_b => "MyString",
      :level => "MyString",
      :year => 1,
      :cost => "MyString",
      :type => "",
      :rating => 1,
      :link => "MyString",
      :keywords => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new resource form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => resources_path, :method => "post" do
      assert_select "input#resource_user_id", :name => "resource[user_id]"
      assert_select "input#resource_title", :name => "resource[title]"
      assert_select "input#resource_source", :name => "resource[source]"
      assert_select "input#resource_categ_a", :name => "resource[categ_a]"
      assert_select "input#resource_categ_b", :name => "resource[categ_b]"
      assert_select "input#resource_level", :name => "resource[level]"
      assert_select "input#resource_year", :name => "resource[year]"
      assert_select "input#resource_cost", :name => "resource[cost]"
      assert_select "input#resource_type", :name => "resource[type]"
      assert_select "input#resource_rating", :name => "resource[rating]"
      assert_select "input#resource_link", :name => "resource[link]"
      assert_select "input#resource_keywords", :name => "resource[keywords]"
      assert_select "textarea#resource_description", :name => "resource[description]"
    end
  end
end

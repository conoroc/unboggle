require 'spec_helper'

describe "resources/show" do
  before(:each) do
    @resource = assign(:resource, stub_model(Resource,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/Source/)
    rendered.should match(/Categ A/)
    rendered.should match(/Categ B/)
    rendered.should match(/Level/)
    rendered.should match(/2/)
    rendered.should match(/Cost/)
    rendered.should match(/Type/)
    rendered.should match(/3/)
    rendered.should match(/Link/)
    rendered.should match(/Keywords/)
    rendered.should match(/MyText/)
  end
end

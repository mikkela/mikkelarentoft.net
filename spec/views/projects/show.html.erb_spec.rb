require 'spec_helper'

describe "projects/show.html.erb" do
  it "displays the name attribute of the project" do
    assign(:project, double("Project", :name => "My newest project").as_null_object)
    render
    rendered.should contain("My newest project")
  end

  it "displays the description attribute of the project" do
    assign(:project, double("Project", :description => "My project is all about").as_null_object)
    render
    rendered.should contain("My project is all about")
  end
end

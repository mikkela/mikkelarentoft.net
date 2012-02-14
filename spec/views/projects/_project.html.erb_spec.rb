require 'spec_helper'

describe "projects/_project.html.erb" do
  before(:each) do
    @project = mock_model(Project).as_new_record.as_null_object
    assign(:project, @project)
  end

  it "renders a text field for the project name" do
    @project.stub(:name).and_return('My project name')
    render

    rendered.should have_selector("form") do |form|
      form.should have_selector("input",
                  :type => "text",
                  :name => "project[name]",
                  :value => "My project name")
    end

  end

  it "renders a text area for the project description" do
    @project.stub(:description).and_return('My project description')
    render

    rendered.should have_selector("form") do |form|
      form.should have_selector("textarea",
                  :name => "project[description]",
                  :content => "My project description")
    end

  end

end
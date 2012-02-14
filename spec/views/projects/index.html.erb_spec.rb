require 'spec_helper'

describe "projects/index.html.erb" do

  before(:each) do
    @projects = [
      stub_model(Project, :name => "Project 1", :description => "Description 1"),
      stub_model(Project, :name => "Project 2", :description => "Description 2"),
      stub_model(Project, :name => "Project 3", :description => "Description 3")]

    assign(:projects, @projects)
  end

  it "renders all the projects" do
    render

    rendered.should have_xpath('//div[@class="project"]', :count => @projects.count)
  end

  it "renders each project identified by its id" do
    render

    @projects.each do |project|
      rendered.should have_xpath('//div[@class="project" and @id="' + project.id.to_s() + '"]')
    end
  end

  it "renders the project name as the header"  do
    render

    @projects.each do |project|
      rendered.should have_xpath('//div[@class="project" and @id="' + project.id.to_s() + '"]') do  |div|
        div.should have_selector ("h2") do |header|
          header.should contain(project.name)
        end
      end
    end

  end

  it "renders the header as a link to the project"  do
    render

    @projects.each do |project|
      rendered.should have_xpath('//div[@class="project" and @id="' + project.id.to_s() + '"]') do  |div|
        div.should have_selector ("h2") do |header|
          header.should have_selector("a", :href => projects_path(project))
        end
      end
    end

  end

  it "renders a project description as paragraph" do
  render

    @projects.each do |project|
      rendered.should have_xpath('//div[@class="project" and @id="' + project.id.to_s() + '"]') do  |div|
        div.should have_selector ("p") do |paragraph|
          paragraph.should contain(project.description)
        end
      end
    end
  end

  it "renders an edit link for the project"  do
      render

      @projects.each do |project|
        rendered.should have_xpath('//div[@class="project" and @id="' + project.id.to_s() + '"]') do  |div|
          div.should have_selector("a", :href => edit_project_path(project))
        end
      end

    end

  it "renders a new project link" do
    render

    rendered.should have_xpath('//a[@id="new"]') do |link|
      link.should contain 'New Project'
    end
  end
end
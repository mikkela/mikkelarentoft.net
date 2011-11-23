Given /^a list of projects$/ do
  @project1 = Project.create! :name => "Project 1", :description => "A description of my project 1"
  @project2 = Project.create! :name => "Project 2", :description => "A description of my project 2"
  @project3 = Project.create! :name => "Project 3", :description => "A description of my project 3"
end

Then /^I am shown a list of all the projects$/ do
  page.should have_xpath('.//meta[@name="Page" and @content="' + ProjectsHelper.generate_index_project_page_id + '"]')

  page.should contain(@project1.name)
  page.should contain(@project2.name)
  page.should contain(@project3.name)
end


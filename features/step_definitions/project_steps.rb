Given /^a list of projects$/ do
  @project1 = Factory(:project, :name => "Project 1")
  @project2 = Factory(:project, :name => "Project 2")
  @project3 = Factory(:project, :name => "Project 3")
end

Then /^I am shown a list of all the projects$/ do
  page.should have_xpath('.//meta[@name="Page" and @content="' + ProjectsHelper.generate_index_project_page_id + '"]')

  page.should contain(@project1.name)
  page.should contain(@project2.name)
  page.should contain(@project3.name)
end


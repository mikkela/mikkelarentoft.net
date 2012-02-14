Given /^there is a project named "([^"]*)"$/ do |name|
  if @projects == nil
    @projects = Array.new
  end
  @projects.push Factory(:project, :name => name)
end

When /^I follow "([^"]*)"$/ do |link|
  click_link link
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in "project_" + arg1.downcase, :with => arg2
end

When /^I press "([^"]*)"$/ do |button|
  click_button button
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should contain(text)
end


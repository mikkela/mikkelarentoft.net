Given /^I am on the "(Home|Contact|Portfolio)" page$/ do |page|
  if page == "Home"
    visit pages_home_path
  elsif page == "Contact"
    visit pages_contact_path
  elsif page == "Portfolio"
    visit projects_path
  else
    pending
  end
end

When /^I enter the "(Portfolio)" page$/ do |arg1|
  visit projects_path
end
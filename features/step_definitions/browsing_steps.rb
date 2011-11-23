When /^I select "(Home|Contact)" on the top navigation bar$/ do |choice|
  if choice == "Home"
    click_link "topNav.Home"
  elsif choice == "Contact"
    click_link "topNav.Contact"
  else
    pending
  end
end

When /^I select "(Home|Contact|Portfolio)" on the left navigation bar$/ do |choice|
  if choice == "Home"
    click_link "leftNav.Home"
  elsif choice == "Contact"
    click_link "leftNav.Contact"
  elsif choice == "Portfolio"
    click_link "leftNav.Portfolio"
  else
    pending
  end
end

Then /^I am led to the "(Home|Contact|Portfolio)" page$/ do |new_page|
  if new_page == "Home"
    page.should have_xpath('.//meta[@name="Page" and @content="' + PagesController::HOME_PAGE_NAME + '"]')
  elsif new_page == "Contact"
    page.should have_xpath('.//meta[@name="Page" and @content="' + PagesController::CONTACT_PAGE_NAME + '"]')
  elsif new_page == "Portfolio"
    page.should have_xpath('.//meta[@name="Page" and @content="' + ProjectsHelper.generate_index_project_page_id + '"]')
  else
    pending
  end
end

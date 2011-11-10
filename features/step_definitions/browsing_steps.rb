Given /^I am on the "(Home|Contact)" page$/ do |page|
  if page == "Home"
    visit pages_home_path
  elsif page == "Contact"
    visit pages_contact_path
  else
    pending
  end
end

When /^I select "(Home|Contact)" on the top navigation bar$/ do |choice|
  if choice == "Home"
    click_link "topNav.Home"
  elsif choice == "Contact"
    click_link "topNav.Contact"
  else
    pending
  end
end

When /^I select "(Home|Contact)" on the left navigation bar$/ do |choice|
  if choice == "Home"
    click_link "leftNav.Home"
  elsif choice == "Contact"
    click_link "leftNav.Contact"
  else
    pending
  end
end

Then /^I am led to the "(Home|Contact)" page$/ do |new_page|
  if new_page == "Home"
    page.should have_xpath('.//meta[@name="Page" and @content="' + PagesController::HOME_PAGE_NAME + '"]')
  elsif new_page == "Contact"
    page.should have_xpath('.//meta[@name="Page" and @content="' + PagesController::CONTACT_PAGE_NAME + '"]')
  else
    pending
  end
end

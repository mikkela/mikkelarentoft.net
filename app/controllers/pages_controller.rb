class PagesController < ApplicationController
   HOME_TITLE = "Home"
   CONTACT_TITLE = "Contact"

   HOME_PAGE_NAME = "HomePage"
   CONTACT_PAGE_NAME = "ContactPage"

  def home
    @title = HOME_TITLE
    @page = HOME_PAGE_NAME
  end

  def contact
    @title = CONTACT_TITLE
    @page = CONTACT_PAGE_NAME
  end

end

class PagesController < ApplicationController
   HOME_TITLE = "Home"
   CONTACT_TITLE = "Contact"

  def home
    @title = HOME_TITLE
  end

  def contact
    @title = CONTACT_TITLE
  end

end

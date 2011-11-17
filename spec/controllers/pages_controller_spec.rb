require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                      :content => PagesController::HOME_TITLE)
    end

    it "contains the correct Page meta tag" do
      get 'home'
      response.should contain_page_meta_tag PagesController::HOME_PAGE_NAME
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                      :content => PagesController::CONTACT_TITLE)
    end

    it "contains the correct Page meta tag" do
      get 'contact'
      response.should contain_page_meta_tag PagesController::CONTACT_PAGE_NAME
    end
  end
end

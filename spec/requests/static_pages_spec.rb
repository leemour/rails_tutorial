require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
  	it "should have the content 'Sample App'" do
  		visit "/static_pages/home"
      page.should have_selector('h1', :text => 'Sample App')
      page.should have_content('This is the home page')
  	end

    it "should have the right title" do
      visit "/static_pages/home"
      page.should have_selector('title',
        :text => 'Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
      page.should have_content('Get help')
    end

    it "should have the right title" do
      visit "/static_pages/help"
      page.should have_selector('title',
        :text => 'Ruby on Rails Tutorial Sample App | Help')
    end
  end

  describe "About page" do
  	it "should have the content 'About us'" do
  		visit '/static_pages/about'
  		page.should have_content('About us')
  	end

    it "should have the right title" do
      visit "/static_pages/about"
      page.should have_selector('title',
        :text => 'Ruby on Rails Tutorial Sample App | About')
    end
  end

  describe "Contact Page" do
    it "should have the content 'About us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
      page.should have_content('Contact')
    end

    it "should have the right title" do
      visit "/static_pages/contact"
      page.should have_selector('title',
        :text => 'Ruby on Rails Tutorial Sample App | Contact')
    end
  end
end

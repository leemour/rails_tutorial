require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

  	it { should have_selector('h1', :text => 'Sample App') }
    it { should have_content('This is the home page') }
    it { should have_selector('title', :text => full_title('')) }
    it { should_not have_selector('title', :text => full_title('Home')) }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1', :text => 'Help') }
    it { should have_content('Get help') }
    it { should have_selector('title', :text => full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

  	it { should have_content('About us') }

    it { should have_selector('title', :text => full_title('About')) }
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_content('Contact') }

    it { should have_selector('title', text: full_title('Contact')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    should have_selector 'title', text: full_title('About')
    click_link "Help"
    should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    should have_selector 'title', text: full_title('')
    click_link "Sign up now"
    should have_selector 'title', text: full_title('Sign up')
    click_link "sample app"
    should have_selector 'h1', text: 'Sample App'
  end
end

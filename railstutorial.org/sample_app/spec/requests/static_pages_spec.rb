require 'spec_helper'

describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end

  describe "Home page" do  # The first line indicates that we are describing the Home page.
    # This description is just a string and is not important.

    it "should have the content 'Sample App'" do    # describing string
      visit '/static_pages/home'                    #  simulate visiting the URL /static_pages/home in a browser
      expect(page).to have_content('Sample App')  # when you visit the Home page at /static_pages/home, the content should contain the words “Sample App”
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end

# What goes inside the quote marks is irrelevant to RSpec, and is intended to be descriptive to human readers.

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
  end
end

# What goes inside the quote marks is irrelevant to RSpec, and is intended to be descriptive to human readers.

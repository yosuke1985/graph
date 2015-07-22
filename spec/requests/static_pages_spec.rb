require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
  visit '/static_pages/home'
  expect(page).to have_title("Home")
end
  end
end

  describe "Help pages" do

    describe "Help page" do

      it "should have the content 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_content('help')
      end


      it "should have the title 'Home'" do
    visit '/static_pages/help'
    expect(page).to have_title("Help")
  end
    end
end

describe "ABOUT pages" do

  describe "ABOUT page" do

    it "should have the content 'Help'" do
      visit '/static_pages/about'
      expect(page).to have_content('about')
    end

    it "should have the title 'About'" do
  visit '/static_pages/about'
  expect(page).to have_title("About")
end
  end
end

describe "Contact pages" do

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('contact')
    end

    it "should have the title 'Contact'" do
  visit '/static_pages/contact'
  expect(page).to have_title("contact")
end
  end
end

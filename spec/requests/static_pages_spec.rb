require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path}
    it "should have the content 'Graph'" do
      expect(page).to have_content('Graph')
    end

    it "should have the title 'Home'" do
      expect(page).to have_title("Home")
  end
end

  describe "Help pages" do
      before{ visit help_path}
      it "should have the content 'Help'" do
        expect(page).to have_content("Help")
      end
      it "should have the title 'Help'" do
        expect(page).to have_title("Help")
      end
end

describe "ABOUT pages" do
      before{ visit about_path}

    it "should have the content 'About'" do
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      expect(page).to have_title("About")
end

end


describe "Contact page" do
      before{ visit contact_path}
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('contact')
    end

    it "should have the title 'Contact'" do
  visit contact_path
  expect(page).to have_title("contact")
end

end
end

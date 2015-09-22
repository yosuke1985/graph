require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path}
    it { should have_content('Graph')}
    it { should have_title("Home")}
  end

  describe "Help pages" do
      before{ visit help_path}

     it { should have_content("Help")}
     it { should have_title('Help')}
end
describe "ABOUT pages" do
      before{ visit about_path}
    it { should have_content('About')}
    it { should have_title("About") }
end


describe "Contact page" do
      before{ visit contact_path}

      it { should have_content('contact') }
      it { should have_title("contact") }
end

end

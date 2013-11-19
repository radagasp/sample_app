require 'spec_helper'

describe "Static pages" do
  let (:str) { "Ruby on Rails Tutorial Sample App" }
  
  describe "Contact Page" do
    
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  
    it "should have title 'Contact'" do
        @astr = "Ruby on Rails Tutorial Sample App"
      visit '/static_pages/contact'
      expect(page).to have_title("#{str} | Contact")
    end
  end

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{str}")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).to_not have_title("| Home")
    end
      
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{str} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{str} | About Us")
    end
  end
end

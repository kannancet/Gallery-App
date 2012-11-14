=begin
  This file is used to specify the integration tests related to static pages. 
=end
require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Welcome to Photo Gallery'" do
      visit '/'
      page.should have_content('Welcome to Photo Gallery')
    end
  end
  
  describe "PhotoGallery listing page" do

    it "should have the content 'Listing Photo Galleries'" do
      visit '/photo_galleries'
      page.should have_content('Listing Photo Galleries')
    end
  end
  
  describe "PhotoItem listing page" do

    it "should have the content 'Listing Photo Items'" do
      visit '/photo_items'
      page.should have_content('Listing Photo Items')
    end
  end
  
  describe "PhotoGallery creation page" do

    it "should have the content 'New Photo Gallery'" do
      visit '/photo_galleries/new'
      page.should have_content('New Photo Gallery')
    end
  end

  describe "PhotoItem creation page" do

    it "should have the content 'New Photo Item'" do
      visit '/photo_items/new'
      page.should have_content('New Photo Item')
    end
  end
  
  describe "PhotoItem creation workfow" do

    it "should have the content 'New Photo Item'" do
      visit '/photo_items/new'
      page.should have_content('New Photo Item')
    end
  end
end

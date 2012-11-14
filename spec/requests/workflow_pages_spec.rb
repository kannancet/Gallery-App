require 'spec_helper'

describe "WorkflowPages" do
  
  describe "Gallery Creation Page Validation Check", :type => :request do
  
    it "checks gallery creation for validation of title" do
      visit '/photo_galleries/new'
      click_on('Create Photo gallery')
      page.should have_content("Title can't be blank")
    end
  end
  
  describe "Gallery Creation Page", :type => :request do
  
    it "creates a new photo gallery" do
      visit '/photo_galleries/new'
      fill_in 'Title', :with => 'Gallery new for all'
      fill_in 'Description', :with => 'Gallery description for all.'
      click_on('Create Photo gallery')
      page.should have_content("Photo gallery was successfully created.")
    end
  end

end

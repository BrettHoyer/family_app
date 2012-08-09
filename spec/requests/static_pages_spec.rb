require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do

  	it "should have the h1 'Home'" do
  		visit '/static_pages/home'
  		page.should have_selector('h1', :text => 'Home')
  	end

  	it "should have the title 'Home'" do
  		visit '/static_pages/home'
  		page.should have_selector('title',
  						 :text => "Brett Hoyer App | Home")
  	end
  end

  describe "Help Page" do

  	it "should have the h1 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => "God, Help Me!")
  	end

  	it "should have the title 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('title',
  					 	:text => "Brett Hoyer App | Help" )
  	end
  end

	
  describe "Parents Page" do

  	it "should have the h1 'Jew and Fatboy'" do
  		visit '/static_pages/parents'
  		page.should have_selector('h1', :text => "Jew and Fatboy")
  	end

  	it "should have the title 'Parents'" do
  		visit '/static_pages/parents'
  		page.should have_selector('title',
  							:text => "Brett Hoyer App | Parents")
	end  
  end
end
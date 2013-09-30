require 'spec_helper'

feature 'user reviews and rates a food truck', %Q {
  As an authenticated food truck lover
  I want to rate a food truck
  So that I an give my opinion about the truck
} do

  # ACCEPTANCE CRITIERA
  #
  # I must declare the truck as good or bad ( or whatever adjectives we choose )
  # I see that I made a rating when I do so
  # The new stats are visible on the screen
  # I can optionally review the truck

scenario 'user provides the required information' do
  FactoryGirl.cre

  visit new_review_path
  fill_in 'body'
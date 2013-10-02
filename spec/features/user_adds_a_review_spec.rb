require 'spec_helper'

feature 'user reviews and rates a food truck', %Q{
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
    FactoryGirl.create(:review)
    prev_count = Review.count

    visit new_review_path
    fill_in 'Body', with: 'Totally awesome!'
    choose 'Good'
    click_on 'Create review'

    expect(prev_count).to eql(prev_count + 1)
    expect(page).to have_content('Review is created successfully')

  end
end
require 'spec_helper'

feature 'user votes on a truck', %Q{
  As a authenticated food truck lover
  I want to vote on a food truck
  So that I can voice my opinion
  } do
    
  # Acceptance Criteria
  # I can only upvote or downvote once.
  # I can change my vote from up to down.
  # I can see that I voted

  scenario 'user upvotes' do
    user = FactoryGirl.create(:user)
    truck = FactoryGirl.create(:food_truck)

    prev_count = Vote.count


    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    visit new_food_truck_vote_path(truck)
    choose 'Up'
    click_button "Create Vote"

    expect(Vote.count).to eql(prev_count + 1)
    expect(page).to have_content("You voted successfully")
    expect(Vote.last.voted_up).to eql(true)

    expect(Vote.last.user_id).to eql(user.id)
    expect(Vote.last.food_truck_id).to eql(truck.id)

  end  

  scenario 'user downvotes' do

    user = FactoryGirl.create(:user)
    truck = FactoryGirl.create(:food_truck)

    prev_count = Vote.count


    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    visit new_food_truck_vote_path(truck)
    choose 'Down'
    click_button "Create Vote"

    binding.pry

    expect(Vote.count).to eql(prev_count + 1)
    expect(page).to have_content("You voted successfully")
    expect(Vote.last.voted_up).to eql(false)

    expect(Vote.last.user_id).to eql(user.id)
    expect(Vote.last.food_truck_id).to eql(truck.id)
  end


  scenario 'user tries to vote more than once' 

    # user = FactoryGirl.create(:user)
    # truck = FactoryGirl.create(:food_truck)

    # prev_count = Vote.count

    # visit new_user_session_path

    # fill_in 'Email', with: user.email
    # fill_in 'Password', with: user.password
    # click_button 'Sign In'

    # vote = Vote.create(voted_up: true, user_id: current_user.id, 
    #   food_truck_id: truck.id)

    # visit new_food_truck_vote_path(truck)
    # choose 'Up'
    # click_button "Create Vote"

    # expect(Vote.count).to eql(prev_count)
    # expect(page).to_not have_content("You voted successfully")
    # expect(page).to have_content('You already voted')


end

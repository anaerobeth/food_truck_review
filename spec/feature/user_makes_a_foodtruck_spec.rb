require 'spec_helper'

feature 'user adds a foodtruck to be reviewed', %Q{
  As an authenticated food truck lover
  I want to add a food truck to be reviewed
  So that others browse and review them
 } do

# ACCEPTANCE CRITERIA
#
# I must provide a picture of the food truck
# I must provide the name of the truck
# I must provide the city of the truck
# I must provide the category of food the truck has
# I can optionally provide the description of the truck
# If I don't provide the info, I get an error message
# If I do provide the info, I am brought to the truck's page


  scenario 'User creates successfully a foodtruck with correct info' do

    food_truck_count = FoodTruck.count
    visit new_food_truck_path
    fill_in 'Truck Name', with: 'Chicken and Rice'
    fill_in 'City', with: 'Boston'
    select 'Truck_color', with: 'White'
    fill_in 'Truck_size', with: 'Huge'

    fill_in 'Picture', with: 'some picture here'
    fill_in 'Description', with: 'good stuff'
    fill_in 'Food category', with: 'chicken and rice'

    fill_in "Description", with: 'Best place'
    click_on 'Create Food Truck'
    expect(FoodTruck.count).to eql(food_truck_count + 1)

  end
end
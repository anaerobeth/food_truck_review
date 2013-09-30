require 'spec_helper'

describe FoodTruck do


  it { should have_valid(:truck_name).when('Tasty snacks', "John's cooker") }
  it { should_not have_valid(:truck_name).when(nil, '') }

  it { should have_valid(:truck_color).when('blue', 'red') }
  it { should_not have_valid(:truck_color).when(nil, '') }

  it { should have_valid(:truck_size).when('big', 'small') }
  it { should_not have_valid(:truck_size).when(nil, '') }

  it { should have_valid(:city).when('Hamilton', 'Newton') }
  it { should_not have_valid(:city).when(nil, '') }

  it { should have_valid(:food_category).when('vegan', 'burgers') }
  it { should_not have_valid(:food_category).when(nil, '') }

  it { should have_valid(:description).when('vegan filler text ', 'SUPER FILLER TEXT') }
  it { should_not have_valid(:description).when(nil, '') }

end
require 'spec_helper'

feature 'user views trucks' do

  scenario 'all of the trucks are listed' do

    FactoryGirl.create_list(:food_truck, 5)

    visit food_trucks_path

    expect( FoodTruck.all.all?{|truck| page.body.include?(truck.name)} ).to be_true

  end

end

require 'spec_helper'

feature 'user views trucks' do

  scenario 'all of the trucks are listed' do

    FactoryGirl.create_list(:food_truck, 5)

    visit food_trucks_path

    FoodTruck.all.each do |truck|
      expect(page).to have_content( truck.name )
    end

  end
end

require 'spec_helper'

describe Vote do
  it { should validate_presence_of(:voted_up  ) }
  it { should belong_to :user}
  it { should belong_to :food_truck}
end

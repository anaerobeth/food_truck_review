class Vote < ActiveRecord::Base
  VALID_VOTES = [true, false]

  validates_numericality_of :user_id,
    allow_blank: false, 
    only_integer: true
  validates_numericality_of :food_truck_id,
    allow_blank: false, 
    only_integer: true
  validates_inclusion_of :voted_up, in: VALID_VOTES

  belongs_to :food_truck,
    inverse_of: :votes

end

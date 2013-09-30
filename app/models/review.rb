class Review < ActiveRecord::Base
  validates_numericality_of :user_id,
    only_integer: :true,
    greater_than_or_equal_to: 1

  validates_numericality_of :truck_id,
    only_integer: :true,
    greater_than_or_equal_to: 1

  validates_presence_of :body
  validates_presence_of :truck_id
  validates_presence_of :user_id
end

class Review < ActiveRecord::Base

  validates_numericality_of :user_id,
    only_integer: :true,
    greater_than_or_equal_to: 1

  validates_numericality_of :truck_id,
    only_integer: :true,
    greater_than_or_equal_to: 1

  validates_presence_of :body

  validates_presence_of :is_good?

  belongs_to :user,
    inverse_of: :reviews

  belongs_to :truck,
    inverse_of: :reviews

end

class Review < ApplicationRecord
  belongs_to :booking
  has_one :robot, through: :bookings
end

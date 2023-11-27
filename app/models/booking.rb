class Booking < ApplicationRecord
  belongs_to :robot
  belongs_to :user
  has_many :reviews
  validates :activity, presence: true
  validates :comment, presence: true
end

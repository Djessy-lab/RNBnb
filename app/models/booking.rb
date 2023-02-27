class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artist

  validates :date, presence: true
end

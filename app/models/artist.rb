class Artist < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :photo_url, presence: true
end

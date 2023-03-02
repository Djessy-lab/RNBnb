class Artist < ApplicationRecord
  searchkick suggest: [:name]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :photo, presence: true

  has_one_attached :photo
end

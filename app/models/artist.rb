require 'rspotify'

class Artist < ApplicationRecord
  # searchkick suggest: [:name]
  searchkick word_start: [:name]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end

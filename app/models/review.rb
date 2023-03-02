class Review < ApplicationRecord
  belongs_to :artist
  belongs_to :user

  validates :content, presence: true
  validates :content, length: { minimum: 6 }
  validates :rating, presence: true
end

class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :rating, inclusion: { in: (0..5) }
  validates :content, presence: true

  # before_create do |review|
  #   p review.rating
  #   review.rating = -1 if review.rating.is_a? Integer == false
  # end
end

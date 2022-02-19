class GenderRating < ApplicationRecord
  belongs_to :company
  validates :c_rating, :mid_rating, :junior_rating, numericality: { in: (1..100) }
end

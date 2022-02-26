class AddAverageRatingToGenderRatings < ActiveRecord::Migration[6.1]
  def change
    add_column :gender_ratings, :average_rating, :float
  end
end

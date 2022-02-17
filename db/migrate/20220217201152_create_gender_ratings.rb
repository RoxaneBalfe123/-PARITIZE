class CreateGenderRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :gender_ratings do |t|
      t.float :c_rating
      t.float :mid_rating
      t.float :junior_rating
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end

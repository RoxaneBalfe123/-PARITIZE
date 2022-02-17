class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :type_of_company
      t.string :company_size
      t.integer :women_c_level
      t.integer :men_c_level
      t.integer :women_mid_senior_level
      t.integer :men_mid_senior_level
      t.integer :women_junior_level
      t.integer :men_junior_level
      t.string :hq_location
      t.text :company_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

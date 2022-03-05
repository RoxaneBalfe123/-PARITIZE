class RemoveMenCLevelToCompanies < ActiveRecord::Migration[6.1]
  def change
    remove_column :companies, :men_c_level, :integer
  end
end

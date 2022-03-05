class RemoveMenMidSeniorLevelToCompanies < ActiveRecord::Migration[6.1]
  def change
    remove_column :companies, :men_mid_senior_level, :integer
  end
end

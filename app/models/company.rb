class Company < ApplicationRecord
  TYPE_OF_COMPANY = %w[science technology engineering math]
  COMPANY_SIZE = %w[small medium large]
  belongs_to :user
  has_many :gender_ratings
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy

  validates :company_name, uniqueness: true, presence: true
  validates :company_description, uniqueness: true, presence: true
  validates :hq_location, presence: true
  validates :company_size, inclusion: { in: COMPANY_SIZE }
  validates :type_of_company, inclusion: { in: TYPE_OF_COMPANY }
  validates :women_c_level, numericality: { in: (1..100) }
  validates :women_mid_senior_level, numericality: { in: (1..100) }
  validates :women_junior_level, numericality: { in: (1..100) }
  include PgSearch::Model
  pg_search_scope :search_by_company_name,
    against: [ :company_name ],
    using: {
      tsearch: { prefix: true }
    }
end

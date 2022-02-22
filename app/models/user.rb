class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        #  comment line
  has_many :companies
  has_many :bookmarks, dependent: :destroy

  validates :email, uniqueness: true, presence: true
end

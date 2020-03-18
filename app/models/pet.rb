class Pet < ApplicationRecord
  # belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations
  validates :name, presence: true
  has_one_attached :image
end

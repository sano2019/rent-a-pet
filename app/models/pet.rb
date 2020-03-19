class Pet < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  validates :name, presence: true
end

class Pet < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  validates :name, presence: true


  def full_price
    # return the total_price / 100 (because we are storing cents)
    total_price / (100)
  end
end

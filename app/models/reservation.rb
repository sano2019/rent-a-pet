class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  def full_price
    # return the total_price / 100 (because we are storing cents)
    total_price.fdiv(100)
  end
end

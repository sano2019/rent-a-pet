class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reserv_params)
  end

  private

  def reserv_params
  end
end

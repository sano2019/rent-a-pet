class ReservationsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @reservation = Reservation.new

  def create
    @reservation = Reservation.new(reserv_params)
  end

  private

  def reserv_params
  end
end

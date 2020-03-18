class ReservationsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @reservation = Reservation.new
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @reservation = Reservation.new(reserv_params)
    @reservation.user = current_user
    @reservation.pet = @pet
    # still to implement: the price
    # period = @reservation.end_date - @reservation.start_date
    # @reservation.total_price = @pet.price_per_day * period
  end

  private

  def reserv_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end

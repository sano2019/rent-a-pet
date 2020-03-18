class ReservationsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @reservation = Reservation.new
  end

end

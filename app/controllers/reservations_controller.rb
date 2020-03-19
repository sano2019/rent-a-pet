class ReservationsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @reservation = Reservation.new
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @reservation = Reservation.new
    @reservation.user = current_user
    @reservation.pet = @pet
    # Implementing the price

    if @reservation.save
      redirect_to :root, notice: "Offer send to owner"
    else
      render :new
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reserv_params
    params.require(:reservation).permit(:pet_id)
  end
end

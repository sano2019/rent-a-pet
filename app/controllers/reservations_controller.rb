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

  def index
    @reservations = Reservation.where(pet_id: current_user.pets)
  end

  def my_offers
    @reservations = Reservation.where(user: current_user)
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.reservation_status = "accepted"
    @reservation.save
    redirect_to reservations_path
  end

   def decline
    @reservation = Reservation.find(params[:id])
    @reservation.reservation_status = "declined"
    @reservation.save
    redirect_to reservations_path
  end

  private

  def reserv_params
    params.require(:reservation).permit(:pet_id)
  end
end

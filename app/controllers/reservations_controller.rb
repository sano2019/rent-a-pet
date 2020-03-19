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
    # Implementing the price
    period = @reservation.end_date - @reservation.start_date
    # turn it into an integer because it was a rational
    period = period.to_i
    @reservation.total_price = (@pet.price_per_day) * period
    if @reservation.save
      redirect_to pets_path(@pet)
    else
      render :new
    end

  end

  private

  def reserv_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end

class PetsController < ApplicationController
  def index
    if current_user.pets.any?
      @pets = Pet.where.not(user: current_user)
    else
      @pets = Pet.all
    end

  end

  def new
    @pet = Pet.new
  end

  def show
    @pet = Pet.find(params[:id])
    # raise
  end

  def create
      @pet = Pet.new(pet_params)
      @pet.user = current_user
      period = @pet.end_date - @pet.start_date
       # turn it into an integer because it was a rational
      period = period.to_i
      @pet.total_price = (@pet.price_per_day) * period
      if @pet.save
        redirect_to pets_my_pets_path, notice: 'successfully created.'
      else
        render :new
      end
  end

  def my_pets
    @pets = current_user.pets
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    # raise
    redirect_to pets_my_pets_path
  end

  private

  def pet_params
      params.require(:pet).permit(:name, :age, :price_per_day, :description, :image, :pet_category, :user, :start_date, :end_date)
  end

end

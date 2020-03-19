class PetsController < ApplicationController
  def index
    @pets = Pet.all
    # raise
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
      if @pet.save
        redirect_to @pet, notice: 'successfully created.'
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
    redirect_to @pet
  end

  private

  def pet_params
      params.require(:pet).permit(:name, :age, :price_per_day, :description, :pet_category, :user)
  end
end

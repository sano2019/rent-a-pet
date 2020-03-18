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
  end
end

def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to @pet, notice: 'successfully created.'
    else
      render :new
    end
end

private

def pet_params
    params.require(:pet).permit(:name, :age)
  end

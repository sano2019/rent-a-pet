class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if current_user.pets.any?

      @pets = Pet.where.not(user: current_user)
    else
      @pets = Pet.all
    end
  end
end

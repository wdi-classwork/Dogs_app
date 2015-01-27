class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to action: :index
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :gender, :age, :breed, :vaccinated?)
  end
end

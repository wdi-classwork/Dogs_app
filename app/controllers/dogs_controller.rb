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

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update_attributes(dog_params)
    redirect_to action: :index
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to action: :index
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :gender, :age, :breed, :vaccinated?)
  end
end

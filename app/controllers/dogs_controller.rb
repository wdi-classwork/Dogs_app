class DogsController < ApplicationController
  before_action :find_dog, only: [:show, :edit, :update, :destroy]
  def index
    @dogs = Dog.order(:id)
  end

  def show
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @dog.update_attributes(dog_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @dog.destroy
    redirect_to action: :index
  end

  private

  def find_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :gender, :age, :breed, :vaccinated?)
  end
end

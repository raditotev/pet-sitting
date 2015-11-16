class OwnersController < ApplicationController
  def new
    @owner = Dog.new
  end
  def create
    @owner = Dog.new(dog_params)
    if @owner.save
      redirect_to @owner
    else
      render :new
    end
  end

  def show
    @owner = Dog.find(params[:id])
  end

  private

  def dog_params
    params.require(:dog).permit(:owner, :name, :location)
  end
end

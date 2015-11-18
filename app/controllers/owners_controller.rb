class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end
  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      login(@owner)
      redirect_to appointments_path
    else
      render :new
    end
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def update
  @owner = Owner.find(params[:id])
  @owner.update_attributes(owner_params)
  if @owner.save
    #add message
    redirect_to root_url
  else
    #add error message
    redirect_to root_url
  end
end


  private

  def owner_params
    params.require(:owner).permit(:name, :dog,  :location)
  end
end

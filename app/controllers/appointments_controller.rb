class AppointmentsController < ApplicationController

  def create
    appointment = Appointment.new(appointment_params)
    if appointment.save
      #add message
      redirect_to board_path
    else
      #add message
      redirect_to board_path
    end
  end

  def update

  end

  private

  def appointment_params
    params.require(:appointment).permit(:owner_id, :date)
  end

end

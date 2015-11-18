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
    appointment = Appointment.find(params[:id])
    appointment.update_attribute(:sitter_id, appointment_params[:sitter_id])
    #add message
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:owner_id, :sitter_id, :date)
  end

end

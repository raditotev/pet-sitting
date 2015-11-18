class AppointmentsController < ApplicationController
  before_action :author?, only: [:destroy]

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

  def destroy
    appointment = Appointment.find(params[:id])
    if sitter?
      appointment.update_attribute(:sitter_id, nil)
    else
      appointment.destroy
    end
    #add message
    redirect_to appointments_path
  end

  private

def author?
  appointment = Appointment.find(params[:id])
  owner = appointment.owner
  sitter = appointment.sitter
  unless owner == current_user or sitter == current_user
    #error message
    redirect_to login_path
  end
end

  def appointment_params
    params.require(:appointment).permit(:owner_id, :sitter_id, :date)
  end

end

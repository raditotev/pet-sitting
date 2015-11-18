class PagesController < ApplicationController
  def index
  end

  def register
    @sitter = Sitter.new
    @owner = Owner.new
  end

  def login
  end

  def profile
    if sitter?
      @sitter = Sitter.find(current_user.id)
    else
      @owner = Owner.find(current_user.id)
    end
  end

  def board
    @appointment = Appointment.new
    @appointments = Appointment.all.where(sitter_id: nil)
  end

  def appointments
    @appointments = current_user.appointments.where("appointments.sitter_id IS NOT NULL")
    @unassigned = current_user.appointments.where("appointments.sitter_id IS NULL")
  end

end

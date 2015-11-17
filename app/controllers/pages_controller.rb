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

  end

  def board
    @appointment = Appointment.new
    @appointments = Appointment.all.where(sitter_id: nil)
  end

  def appointments

  end

end

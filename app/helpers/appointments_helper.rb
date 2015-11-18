module AppointmentsHelper

  def author?(user)
    current_user == user
  end
end

class Appointment < ActiveRecord::
  belongs_to :walker
  belongs_to :dog
end

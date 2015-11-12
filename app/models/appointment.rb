class Appointment < ActiveRecord::Base
  belongs_to :sitter
  belongs_to :dog
end

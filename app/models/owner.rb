class Owner < ActiveRecord::Base
  has_many :appointments
  has_many :sitters, through: :appointments, source: :owner
end

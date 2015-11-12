class Dog < ActiveRecord::Base
  has_many :appointments
  has_many :walkers, trough: :appointments, source: :walker
end

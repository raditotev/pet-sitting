class Sitter < ActiveRecord::Base
  has_many :appointments
  has_many :dogs, through: :appointments, source: :dog
end

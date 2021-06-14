class Appointment < ApplicationRecord
  belongs_to :medicalcenter
  belongs_to :worker
end

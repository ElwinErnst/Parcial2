class MedicalCenter < ApplicationRecord
  belongs_to :medicalcentertype
  has_many :guards
  has_many :appointments
  has_many :workers, through: :appointments
  has_many :workers, through: :guards

  validates :name, presence: true
  validates :description, presence: true
  validates :phone_number, presence: true
end 

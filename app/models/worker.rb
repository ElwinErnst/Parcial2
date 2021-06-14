class Worker < ApplicationRecord
    has_many :medicalcenters, through: :appointments
    has_many :medicalcenters, through: :guards

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :phone_number, presence: true
    
    def full_name
        first_name + " " + last_name
    end
end

class User < ApplicationRecord
    has_secure_password

    has_many :courses
    has_many :skills, through: :courses
    has_many :courses, through: :attendances

    validates :first_name, :last_name, :email, :password, :password_confirmation, presence: true
    validates :email, uniqueness: true
    validates :password, length: { minimum: 6 }
    #validates :password, inclusion: {in: %w(0..9) }


    def full_name
        return self.first_name + " " + self.last_name
    end
end
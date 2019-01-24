class User < ApplicationRecord 
    has_many :courses
    has_many :skills, through: :courses
    has_many :courses, through: :attendances

    def full_name
        return self.first_name + " " + self.last_name
    end
end
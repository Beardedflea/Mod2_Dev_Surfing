class Course < ApplicationRecord 
    belongs_to :location
    belongs_to :skill
    belongs_to :teacher, :class_name => "User"
    has_many :attendances
    has_many :students, through: :attendances, class_name: "User"

    # validates :first_name 


    def date_list
       return self.start_date.strftime("%d/%m/%Y") + " to " + self.end_date.strftime("%d/%m/%Y")
    end
end 
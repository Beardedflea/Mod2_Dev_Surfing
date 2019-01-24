class Course < ApplicationRecord 
    belongs_to :location
    belongs_to :skill
    belongs_to :teacher, :class_name => "User"
    has_many :attendances
    has_many :students, through: :attendances, class_name: "User"

    validates :name, :description, presence: true
    validates :name, uniqueness: true
    validates :name, length: { in: 5..200}
    validates :description, length: { in: 10..1500}
    validates :start_date, :end_date, presence: true
    #validates :start_date, numericality: {less_than_or_equal_to: Date.today}
    #validates :end_date, numericality: { :greater_than start_date}


    def date_list
       return self.start_date.strftime("%d/%m/%Y") + " to " + self.end_date.strftime("%d/%m/%Y")
    end

    def lesson_time
        self.lesson_duration.strftime("%l:%M")
    end

end 
class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !roster[grade]
            roster[grade] = [name]
        else
            roster[grade] << name
        end
    end

    def grade(grade_number)
        roster[grade_number]
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, students|
            sorted_roster[grade] = students.sort
        end
        sorted_roster
    end

end


# code here!

class School
    attr_reader :roster

    def initialize(name)
        @roster = {}
    end 
    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else 
        @roster[grade] = [name]
        end 
    end 

    def grade(number)
        @roster[number]
    end 

    def sort
        @roster.reduce({}) do |memo, (grade, student)|
            memo[grade] = student.sort
            memo
        end 
    end 

     
end 
require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster 
        @roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(key)
        @roster[key]
    end

    def sort
        result = @roster.reduce({}) do |memo, (grade,name_array)|
            memo[grade] = name_array.sort
            memo
        end
    end
end
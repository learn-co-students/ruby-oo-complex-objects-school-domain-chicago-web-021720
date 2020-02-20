# code here!
require 'pry'
class School
    attr_accessor :roster, :student, :grade, :roster

    def initialize(name)
        @name=name
        @roster=Hash.new

    end

    def add_student(student, grade)
        if @roster[grade]==nil
            @roster[grade]=[student]
        else
            @roster[grade].push student    
        end        
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        newRoster=Hash.new
        new_list=@roster.keys.sort
        for i in new_list
            roster.each do |key, value|
                if i==key
            newRoster[i]=roster[i].sort
                end
            end
        end
        return newRoster
    end
end

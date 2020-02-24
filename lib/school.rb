require 'pry'
class School #model
#binding.pry 

    attr_reader :roster 
    def initialize(roster)
        @roster = {}    
    end

    def add_student(name, grade)
        # if new object has a roster with grade 
        #add name into grade , else, create new.
        if roster[grade]
            roster[grade] << name
            else 
        
            roster[grade] = [name]  
        
        end   
        
    end

    def grade(grade)
        roster[grade] 

    end 

    def sort

        # Turn an array into a hash/ sort them by the grade 
        student_grades = roster.sort.to_h
        # Ask .each to grab the key and value; 
        student_grades.each do |k, v|
            #and sort the values student_grades[k] = v.sort
            student_grades[k] = v.sort
        end

    end 


end
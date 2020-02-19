# code here!
class School 
  attr_accessor :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def add_student(name, grade)
    if(!roster[grade])
      roster[grade] =[]
    end
    roster[grade] << name 
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort 
    roster.map { |grade, students| [grade, students.sort] }.to_h
  end
  
end

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
puts school.roster
puts school.sort
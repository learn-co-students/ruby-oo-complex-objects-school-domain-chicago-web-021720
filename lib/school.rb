# code here!
class School
  attr_accessor :name,:roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name,grade)
    @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    newroster = {}
    sortedkeys = @roster.keys.sort
    sortedkeys.each do |key|
      newroster[key] = @roster[key].sort
    end
    newroster
  end
end

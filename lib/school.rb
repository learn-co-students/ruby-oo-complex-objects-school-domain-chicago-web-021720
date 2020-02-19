class School
    attr_accessor :name, :roster, :grade, :sort, :add_student

    def initialize(name)
        @name = name
        @roster = Hash.new
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.merge(@roster) { |k, v| v.sort }
    end

end
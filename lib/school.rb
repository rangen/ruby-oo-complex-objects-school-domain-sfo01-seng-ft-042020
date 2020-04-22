class School
    attr_accessor :roster

    def initialize(name)
        @roster = Hash.new
    end

    def add_student(name, grade)
        @roster[grade] = [] if @roster[grade].nil?
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.reduce({}) do |memo, (grade, students)|
            memo[grade] = students.sort
            memo
        end
    end
end
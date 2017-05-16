

# code here!

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if roster[grade] == nil
       roster[grade] = []
       roster[grade] << student
    elsif roster.has_key?(grade)
       roster[grade] << student
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |key, value|
      roster[key] = value.sort
    end
    roster
  end 
end

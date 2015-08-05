class School
  attr_accessor :roster; attr_reader :school

  def initialize(school)
    @school = school; @roster = {}
  end

  def add_student(name, grade)
    @roster.include?(grade) ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade)
    @roster.select { |k| k == grade }[grade]
  end

  def sort
    s = {}; @roster.sort_by { |k, v| s[k] = v.sort }; s
  end
end

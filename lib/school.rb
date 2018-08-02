class School

# create a class School that can be initialized with a name
  def initialize(name)
    @name = name
    @roster = {} # a school must have a roster. Should be empty upon initialization
  end

  def roster
    @roster # initializationze
  end

# should be able to add a student by calling add_student
# giving it an argument of name and their grade 
  def add_student(name,grade) 
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end
  
# method grade should take an argument of a grade and return students of tht grade
  def grade(grade)
    @roster[grade]
  end

# sort method of the student array alphabetically
  def sort
    @roster.each do |name,grade|
      grade.sort!
    end
  end
end

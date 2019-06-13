class Student
  attr_reader :name, :grade, :id
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
    db = DB[:conn]
    sql = <<-SQL
      CREATE TABLE students (
            id INTEGER PRIMARY KEY,
            name TEXT,
            grade TEXT
      );
    SQL
  end
end

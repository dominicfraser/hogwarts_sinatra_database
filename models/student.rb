require_relative('sqlrunner')

class Student 

  attr_reader :id, :first_name, :last_name, :house, :age

  def initialize(student_hash)
    @id = student_hash['id'].to_i
    @first_name = student_hash['first_name']
    @last_name = student_hash['last_name']
    @house_id = student_hash['house_id'].to_i
    @age = student_hash['age'].to_i
  end

### Instance methods

  def save()
    sql = "INSERT INTO students (first_name, last_name, house_id, age) VALUES ('#{@first_name}','#{@last_name}',#{@house_id},#{@age}) RETURNING id"

    student_array = SqlRunner.run(sql)
    @id = student_array.first['id'].to_i
  end

  def house()
    sql = "SELECT * FROM houses WHERE id = #{@id} "
    house_hash = SqlRunner.run(sql).first
    return house_hash['house_name']
  end

### Class Methods

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run( sql )
    result = students.map { |student| Student.new(student) }
    return result
  end

  def self.find(specified_id)
    sql = "SELECT * FROM students WHERE id = #{specified_id}"
    student = SqlRunner.run( sql ).first
    result = Student.new(student)
  end



end
require_relative('sqlrunner')

class Student 

  attr_reader :id 

  def initialize(student_hash)
    @id = student_hash['id'].to_i
    @first_name = student_hash['first_name']
    @last_name = student_hash['last_name']
    @house = student_hash['house']
    @age = student_hash['age'].to_i
  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house, age) VALUES ('#{@first_name}','#{@last_name}','#{@house}',#{@age}) RETURNING id"

    student_array = SqlRunner.run(sql)
    @id = student_array.first['id'].to_i

  end

end
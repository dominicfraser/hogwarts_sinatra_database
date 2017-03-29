require_relative('../models/student')

student1 = Student.new({
  'first_name' => '1fn',
  'last_name' => '1ln',
  'house' => 'house1',
  'age' => 15
  })

student2 = Student.new({
  'first_name' => '2fn',
  'last_name' => '2ln',
  'house' => 'house2',
  'age' => 16
  })

student1.save
student2.save
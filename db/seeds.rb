require_relative('../models/student')
require_relative('../models/house')
require('pry')

house1 = House.new({
  'house_name' => 'house1'
  })
house2 = House.new({
  'house_name' => 'house2'
  })

house1.save
house2.save

student1 = Student.new({
  'first_name' => '1fn',
  'last_name' => '1ln',
  'house_id' => house1.id,
  'age' => 15
  })

student2 = Student.new({
  'first_name' => '2fn',
  'last_name' => '2ln',
  'house_id' => house2.id,
  'age' => 16
  })

student1.save
student2.save




#binding.pry
nil
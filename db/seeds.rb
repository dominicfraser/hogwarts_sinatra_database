require_relative('../models/student')
require_relative('../models/house')
require('pry')

gryffindor = House.new({
  'house_name' => 'Gryffindor'
  })
ravenclaw = House.new({
  'house_name' => 'Ravenclaw'
  })
hufflepuff = House.new({
  'house_name' => 'Hufflepuff'
  })
slytherin = House.new({
  'house_name' => 'Slytherin'
  })
gryffindor.save
ravenclaw.save
hufflepuff.save
slytherin.save

student1 = Student.new({
  'first_name' => '1fn',
  'last_name' => '1ln',
  'house_id' => slytherin.id,
  'age' => 15
  })

student2 = Student.new({
  'first_name' => '2fn',
  'last_name' => '2ln',
  'house_id' => hufflepuff.id,
  'age' => 16
  })

student1.save
student2.save




#binding.pry
nil
require_relative('../models/student')
require_relative('../models/house')

get '/students/' do
  redirect '/students'
end

get '/students' do
  @students = Student.all()
  erb(:'students/index')
end

get '/students/new' do
  @houses = House.all()
  erb(:'students/new')
end

post '/students' do
  @student = Student.new(params)
  @student.save
  erb(:'students/create')
end

post '/students/:id/delete' do
  @student = Student.find(params[:id])
  erb(:'students/destroy')
  redirect '/students'
end


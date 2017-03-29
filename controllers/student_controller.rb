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

get '/students/:id' do
  @student = Student.find(params[:id])#can put to_i but in this case posgres doesn't need it
  erb(:'students/show')
end

get '/students/:id/edit' do 
  @houses = House.all()
  @student = Student.find(params[:id])
  erb(:'students/edit')
end

post '/students' do
  @student = Student.new(params)
  @student.save
  erb(:'students/create')
end

post '/students/:id' do 
  @student = Student.new(params)
  @student.update #takes the id from it being thrown in in the edit section
  erb(:'students/update')
  redirect "/students"
end

post '/students/:id/delete' do
  @student = Student.find(params[:id])
  erb(:'students/destroy')
  redirect '/students'
end


require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/student')

get '/students/' do
  redirect '/students'
end

get '/students' do
  @students = Student.all()
  erb(:index)
end

get '/students/new' do
  erb(:new)
end

post '/students' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end
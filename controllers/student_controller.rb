require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/student')

get '/students/' do
  redirect '/students'
end

get '/students' do
  @students = Student.all()
  erb(:index)
end
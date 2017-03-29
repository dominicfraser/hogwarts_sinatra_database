require_relative('../models/student')
require_relative('../models/house')

get '/houses/' do
  redirect '/houses'
end

get '/houses' do
  @houses = House.all()
  erb(:'houses/index')
end
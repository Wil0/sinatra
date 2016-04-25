require 'sinatra'

# :session_secret, 'super secret'

get '/' do
  "hello!"
end

get '/secret' do
  'It is a secret!'
end

get '/public' do
  'This is public!'
end

get '/whatever' do
  'This is whatever you want it to be!'
end

get '/newone' do
  'This is new'
end

get '/stuff' do
  "Stuffed stuff!!!!!!!!!!! Yeah!"
end

get '/cat' do

  "<div>
   <img src='http://bit.ly/1eze8aE'>
  </div>"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking", "Madafaka"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @surname = params[:surname]
  erb(:index)
end

get '/' do
  erb :index
end

get '/index' do
  redirect '/'
end

#-------------AUTH----------------

get '/login' do
  erb :login
end

post '/login' do
  #create a new session w/ conditional logic
  redirect '/'
end

get '/signup' do
  erb :signup
  #sign up form
end

post '/signup' do
  user = User.new(params[:user])

   if user.save
     session[:user_id] = user.id
     redirect "/"
   else
     redirect "/signup"
   end
  redirect '/'
end

get '/logout' do
  redirect '/'
end

#-------------USERS---------------

get '/user/:id' do
  #show basic user profile
end

post '/user/:id/edit' do
end

post '/user/:id/delete' do
  #delete user profile
end







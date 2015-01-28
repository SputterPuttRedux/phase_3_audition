get '/' do
  @movies = Movie.all
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
  user = User.find_by(name: params[:user][:name])
  # if user.try(:authenticate, params[:user][:password])
    session[:user_id] = user.id
    redirect "/user/#{user.id}"
  # else
    # redirect '/login'
  # end
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
  session[:user_id] = nil
  redirect '/'
end

#-------------USERS---------------
get '/user/:id' do
  #show basic user profile
  @user = User.find_by(id: params[:id])
  erb :'user/dashboard'
end


get '/user/:id/:name' do
  @user = User.find_by(id: params[:id])
  @movie = Movie.find_by(name: params[:name])
  erb :'/user/edit-movie'
end

put '/user/:id/:name' do
  movie = Movie.find_by(name: params[:name])
  movie.update(params[:movie])
  user = User.find(movie.user_id)
  redirect "/user/#{user.id}"
end

post '/user/:id/delete' do
  #delete user profile
end


#----------------MOVIES--------------------







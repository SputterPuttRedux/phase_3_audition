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
  if user.try(:authenticate, params[:user][:password])
    session[:user_id] = user.id
    redirect "/user/#{user.id}"
  else
    redirect '/login'
   end

  if request.xhr?
    erb :'login', layout: false
  else
    redirect '/login'
  end

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

end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

#-------------USERS---------------
get '/user/:id/add' do
  @user = User.find_by(id: params[:id])
  erb :'/user/add-movie'
end

post '/user/:id/add' do
  user = User.find_by(id: params[:id])
  movie = Movie.create(params[:movie])
  genre = Genre.create(params[:genre])
  movie.genres << genre
  user.movies << movie
  redirect "/user/#{user.id}"
end

get '/user/:id/:name' do
  #naming is not intuitive, but this edits a particular movie
  @user = User.find_by(id: params[:id])
  @movie = Movie.find_by(name: params[:name])
  erb :'/user/edit-movie'
end

put '/user/:id/:name' do
  movie = Movie.find_by(name: params[:name])
  movie.update(params[:movie])
  movie.genres.first.update(params[:genre])
  user = User.find(movie.user_id)
  redirect "/user/#{user.id}"
end


get '/user/:id' do
  #show user dashboard
  @user = User.find_by(id: params[:id])
  erb :'user/dashboard'
end


post '/user/:id/delete' do
  #delete user profile
end

#----------------MOVIES--------------------

get '/movie/:id' do
  @movie = Movie.find_by(id: params[:id])
  erb :'movie/show'
end





def movie_count
  session[:user_id] ? User.find(session[:user_id]).movies.count : Movie.all.count
end
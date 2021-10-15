Rails.application.routes.draw do
  get "/actor_2" => "actors#actor_id_2"
  get "/all_movies" => "movies#all_movies"
  get "/random_movie" => "movies#random_movie"
end

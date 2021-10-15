class MoviesController < ApplicationController
  def all_movies
    response = Movie.all
    render json: {message: response}
  end
  def random_movie
    response = Movie.sample
    render json: {message: response}
  end
end

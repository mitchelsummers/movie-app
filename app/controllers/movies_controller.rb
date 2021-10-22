class MoviesController < ApplicationController

  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: 406 
    end
  end

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie.as_json
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params [:english] || movie.english
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: 406 
    end
  end

  def destroy
    movie = Mobie.find_by(id: params[:id])
    movie.destroy
    render json: {message: "Movie destroyed."}
  end
end

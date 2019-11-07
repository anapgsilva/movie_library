class GenresController < ApplicationController
  before_action :check_for_login
  before_action :save_my_previous_url

  def index #by alphabetical order
    movies = @current_user.movies
    genres = []
    movies.each do |movie|
      genres.push(movie.genres.split(", "))
    end
    genres = genres.flatten.uniq
    @genres = genres.sort_by { |genre| genre[:name]}
  end

  def show
    genres = @current_user.genres
    @genre = genres.find params[:id]
    @genre_mv = @genre.movies.where :user_id => @current_user.id
  end

  private
  def genre_params
    params.require(:genre).permit(:name, :movie_id)
  end
end

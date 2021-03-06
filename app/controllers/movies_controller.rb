class MoviesController < ApplicationController
  before_action :check_for_login
  before_action :save_my_previous_url


  def index
    @movies = @current_user.movies
    @movies = @movies.sort_by { |movie| movie[:title]}
  end

  def show
    @movie = Movie.find params[:id]
    @libraries = @current_user.libraries
    @libs = @libraries.select { |lib| lib.movies.include? @movie}
  end

  def edit
    @movie = Movie.find params[:id]
    @libraries = @current_user.libraries
  end

  def update
    @movies = @current_user.movies
    movie = @movies.find params[:id]
    movie.update movie_params
    redirect_to movie
  end

  def new
    @movie = Movie.new
    @libraries = @current_user.libraries
  end

  def create
    @movie = Movie.new movie_params
    @current_user.movies << @movie
    @movie.save
    redirect_to @movie
  end

  def add_movie
    imdbID = params[:format]
    @library = @current_user.libraries.find params[:id]
    @movies = @current_user.movies
    #adds movie to library or sends message that it's already there
    if (@movies.find_by :imdbID => imdbID)
      @movie = @movies.find_by :imdbID => imdbID
      unless @library.movies.include? @movie
        @library.movies << @movie
      else
        flash[:movie_exists] = true
      end
    else
      @movie = Movie.create_movie_from_imdb imdbID
      @current_user.movies << @movie
      @library.movies << @movie
    end
    redirect_to library_path(@library.id)
  end

  def destroy
    @movies = @current_user.movies
    movie = @movies.find params[:id]
    movie.destroy
    redirect_to movies_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :cover, :year, :duration, :synopsis, :genre_ids, :actor_ids, :director_id, :library_ids, :user_id, :imdbID)
  end

end

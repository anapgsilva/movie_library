class MoviesController < ApplicationController
  before_action :check_for_login

  def index
    @movies = @current_user.movies
    @movies = @movies.sort_by { |movie| movie[:title]}
  end

  def show
    id = params[:id]

    if (Movie.find_by :id => id) || (Movie.find_by :imdbID => id)
      @movie = Movie.find params[:id]
    else
      create_movie id
    end

    @libraries = @current_user.libraries
  end

  def edit
    @movie = Movie.find params[:id]
    @libraries = @current_user.libraries
  end

  def update
    movie = Movie.find params[:id]
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

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    redirect_to movies_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :cover, :year, :duration, :synopsis, :genre_ids, :actor_ids, :director_id, :library_ids, :user_id, :imdbID)
    # add => [] for many to many associations
  end

  def create_movie imdbID
    @movie = Movie.new
    @movie_data = get_movie imdbID
    movie = @movie_data.body
    @movie.title = movie["Title"]
    @movie.cover = movie["Poster"]
    @movie.year = movie["Year"]
    @movie.duration = movie["Runtime"].chomp.to_i
    @movie.synopsis = movie["Plot"]

    result = Director.find_by :name => movie["Director"]
    if result
      @movie.director_id = result.id
    else
      new_director = Director.new
      new_director.name = movie["Director"]
      new_director.save
      @movie.director_id = new_director.id
    end

    movie["Genre"].split(", ").each do |genre|
      result = Genre.find_by :name => genre
      if result
        @movie.genres << result
      else
        new_genre = Genre.new
        new_genre.name = genre
        new_genre.save
        @movie.genres << new_genre
      end
    end

    movie["Actors"].split(", ").each do |actor|
      result = Actor.find_by :name => actor
      if result
        @movie.actors << result
      else
        new_actor = Actor.new
        new_actor.name = actor
        new_actor.save
        @movie.actors << new_actor
      end
    end

    @current_user.movies << @movie
    redirect_to movie_path(@movie.id)
  end  
end

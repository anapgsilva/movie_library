class PagesController < ApplicationController
  def home
  end

  def search
  end

  def result
    query = params[:query].titleize
    table = params[:table]
    @movies = @current_user.movies
    @actors = @current_user.actors
    @directors = @current_user.directors
    @genres = @current_user.genres
    @libraries = @current_user.libraries

    case table
    when 'IMDB'
      url = "https://movie-database-imdb-alternative.p.rapidapi.com/?page=1&r=json&s=#{query.downcase.split.join("+")}"
      movies_data = Movie.get_movies url
      if movies_data.body["Search"] != nil
        @imdb_result = movies_data.body["Search"][0..4]
      else
        @imdb_result = nil
      end
    when 'Movie'
      @movies_result = @movies.find_by :title => query
    when 'Actor'
      @result = @actors.find_by :name => query
    when 'Director'
      @result = @directors.find_by :name => query
    when 'Genre'
      @result = @genres.find_by :name => query
    when 'Library'
      @result = @libraries.find_by :name => query
    end
    if @result != nil
      @movies_result = @result.movies
    else
      @message = "No results were found."
    end
  end
end

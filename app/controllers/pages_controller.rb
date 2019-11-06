class PagesController < ApplicationController
  before_action :check_for_login

  def home
  end

  def search
  end

  def result
    query = params[:query].titleize
    @movies = @current_user.movies

    @movies_result = @movies.text_search query
    @message = "No results were found." if @movies_result.nil?
    
  end

  def suggestion
    actor_query = params[:actor]
    director_query = params[:director]
    genre_query = params[:genre]

    @actors = @current_user.actors
    @genres = @current_user.genres
    @directors = @current_user.directors

    if actor_query.present?
      if @actors.include? actor_query
        tip = @actors.movies.sample
      end
    end

    if genre_query.present?
      if @genres.include? genre_query
        tip = @genres.movies.sample
      end
    end

    if director_query.present?
      if @directors.include? director_query
        tip = @directors.movies.sample
      end
    end
  end

end

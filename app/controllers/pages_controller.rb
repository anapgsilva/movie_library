class PagesController < ApplicationController
  before_action :check_for_login
  before_action :save_my_previous_url


  def home
  end

  def search
  end

  def result
    if params[:search_query].present?
      query = params[:search_query].titleize
      @movies = @current_user.movies
      #search query in movies and associated models
      @movies_result = @movies.text_search query
      #creates message if no results
      @message = "No results were found." if @movies_result.nil?
    else
      @message = "Find movies by title, actor, genre or director."
    end
  end

  #Suggest a movie to watch
  def suggestion
    #gets query from user
    @actor_query = params[:actor]
    @director_query = params[:director]
    @genre_query = params[:genre].capitalize
    #gets the user movies
    @movies = @current_user.movies
    # @actors = @current_user.actors
    # @genres = @current_user.genres
    # @directors = @current_user.directors

    if params[:commit]

      @actor_movietip = []
      if @actor_query.present?
        actor_mv = @movies.text_search @actor_query
        if actor_mv
          actor_mv.each do |movie|
            @actor_movietip.push(movie)
          end
          @actor_movietip.uniq! if @actor_movietip.present?
        end
      end

      @genre_movietip = []
      if @genre_query.present?
        genre = @genres.text_search @genre_query
        raise 'hell'
        if genre
          genre_mv.movies.each do |movie|
            @genre_movietip.push(movie)
          end
          @genre_movietip.uniq! if @genre_movietip.present?
        end
      end

      @director_movietip = []
      if @director_query.present?
        director_mv = @directors.text_search @director_query
        if director_mv
          director_mv.movies.each do |movie|
            @director_movietip.push(movie)
          end
          @director_movietip.uniq! if @director_movietip.present?
        end
      end

      movie_tips = []
      movie_tips = @actor_movietip + @genre_movietip + @director_movietip
      if movie_tips == []
        @message = "Could not find any match to watch."

      elsif
        @movie_tips = movie_tips.group_by{ |movie| movie }.select { |k, v| v.size > 2 }.map(&:first)

        @movie_tips = movie_tips.group_by{ |movie| movie }.select { |k, v| v.size > 1 }.map(&:first) unless @movie_tips.present?

        @movie_tips = movie_tips.group_by{ |movie| movie }.select { |k, v| v.size > 0 }.map(&:first) unless @movie_tips.present?

        @movie_tip = @movie_tips.shuffle[0]
        # raise "hell"

      end
    end
  end

end

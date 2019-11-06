class Movie < ApplicationRecord
  belongs_to :director, :optional => true;
  belongs_to :user
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :libraries, :optional => true;

  #pg search gem
  include PgSearch
  pg_search_scope :search, against: [:title, :year, :synopsis],
    using: {tsearch: {dictionary: 'english'}},
    associated_against: {actors: :name, director: :name, genres: :name, libraries: :name}

  def self.text_search query
    if query.present?
      search(query)
    else
      scoped
    end
  end
  #end of pg gem

  #get specific movie from API
  def self.get_movie imdbID

    url = "https://movie-database-imdb-alternative.p.rapidapi.com/?i=#{imdbID}&r=json"

    Unirest.get url, headers:{
        "X-RapidAPI-Host" => "movie-database-imdb-alternative.p.rapidapi.com",
        "X-RapidAPI-Key" => Rails.application.secrets.rapid_api_key
      }
  end

  #get movie search results from API
  def self.get_movies url
    Unirest.get url, headers:{
        "X-RapidAPI-Host" => "movie-database-imdb-alternative.p.rapidapi.com",
        "X-RapidAPI-Key" => Rails.application.secrets.rapid_api_key
      }
  end

  #create a movie in users from imdbID value
  def self.create_movie_from_imdb imdbID
    @movie = Movie.new
    @movie_data = Movie.get_movie imdbID
    movie = @movie_data.body
    @movie.title = movie["Title"]
    @movie.cover = movie["Poster"]
    @movie.year = movie["Year"]
    @movie.duration = movie["Runtime"].chomp.to_i
    @movie.synopsis = movie["Plot"]
    @movie.imdbID = movie["imdbID"]

    #check if Director already exists in user or not, before creating new Director
    result = Director.find_by :name => movie["Director"]
    if result
      @movie.director_id = result.id
    else
      new_director = Director.new
      new_director.name = movie["Director"]
      new_director.save
      @movie.director_id = new_director.id
    end

    #check if Genre already exists in user or not, before creating new Genre
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

    #check if Actors already exist in user or not, before creating new Actors
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
    @movie
  end

end

class PagesController < ApplicationController
  def home
  end

  def search
  end

  def result
    @title = params[:title]

    url = "https://movie-database-imdb-alternative.p.rapidapi.com/?page=1&r=json&s=#{@title.downcase.split.join("+")}"

    @result = get_movies url

    @top5 = @result.body["Search"][0..4]

  end
end

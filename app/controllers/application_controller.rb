class ApplicationController < ActionController::Base
  before_action :fetch_user

  private

  def get_movies url
    Unirest.get url, headers:{
        "X-RapidAPI-Host" => "movie-database-imdb-alternative.p.rapidapi.com",
        "X-RapidAPI-Key" => Rails.application.secrets.rapid_api_key
      }
  end

  def get_movie imdbID

    url = "https://movie-database-imdb-alternative.p.rapidapi.com/?i=#{imdbID}&r=json"

    Unirest.get url, headers:{
        "X-RapidAPI-Host" => "movie-database-imdb-alternative.p.rapidapi.com",
        "X-RapidAPI-Key" => Rails.application.secrets.rapid_api_key
      }  

  end

  def fetch_user
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?

    session[:user_id] = nil unless @current_user
  end

  def check_for_login
    redirect_to login_path unless @current_user.present?
  end

  def check_for_admin
    redirect_to root_path unless @current_user.present? && @current_user.admin?
  end
end

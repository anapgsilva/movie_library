class GenresController < ApplicationController
  before_action :check_for_login
  before_action :save_my_previous_url

  def index #by alphabetical order
    @genres = @current_user.genres
    @genres = @genres.sort_by { |genre| genre[:name]}
  end

  def show
    @genres = @current_user.genres
    @genre = @genres.find params[:id]
  end

  private
  def genre_params
    params.require(:genre).permit(:name, :movie_id)
  end
end

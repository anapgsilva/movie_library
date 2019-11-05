class GenresController < ApplicationController
  before_action :check_for_login

  def index
    @genres = @current_user.genres
    @genres = @genres.sort_by { |genre| genre[:name]}
  end

  def show
    @genre = Genre.find params[:id]
  end

  private
  def genre_params
    params.require(:genre).permit(:name, :movie_id)
  end
end

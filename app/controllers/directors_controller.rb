class DirectorsController < ApplicationController
  before_action :check_for_login
  before_action :save_my_previous_url


  def index #by alphabetical order
    @directors = @current_user.directors
    @directors = @directors.sort_by { |director| director[:name]}
  end

  def show
    @directors = @current_user.directors
    @director = @directors.find params[:id]
    @director_mv = @director.movies.where :user_id => @current_user.id
  end

  private
  def director_params
    params.require(:director).permit(:name, :image, :movie_id)
  end
end

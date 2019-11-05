class DirectorsController < ApplicationController
  before_action :check_for_login

  def index
    @directors = @current_user.directors
  end

  def show
    @director = Director.find params[:id]
  end

  private
  def director_params
    params.require(:director).permit(:name, :image, :movie_id)
  end
end

class ActorsController < ApplicationController
  before_action :check_for_login
  before_action :save_my_previous_url

  def index #by alphabetical order
    @actors = @current_user.actors
    @actors = @actors.sort_by { |actor| actor[:name]}
  end

  def show
    @actors = @current_user.actors
    @actor = @actors.find params[:id]
    @actor_mv = @actor.movies.where :user_id => @current_user.id
  end

  private
  def actor_params
    params.require(:actor).permit(:name, :image, :movie_id)
  end
end

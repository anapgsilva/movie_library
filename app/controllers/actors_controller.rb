class ActorsController < ApplicationController
  before_action :check_for_login

  def index
    @actors = @current_user.actors
  end

  def show
    @actor = Actor.find params[:id]
  end

  private
  def actor_params
    params.require(:actor).permit(:name, :image, :movie_id)
  end
end

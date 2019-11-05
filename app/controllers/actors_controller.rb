class ActorsController < ApplicationController
  before_action :check_for_login

  def index
    @actors = @current_user.actors
    @actors = @actors.sort_by { |actor| actor[:name]}
  end

  def show
    @actors = @current_user.actors
    @actor = @actors.find params[:id]
  end

  private
  def actor_params
    params.require(:actor).permit(:name, :image, :movie_id)
  end
end

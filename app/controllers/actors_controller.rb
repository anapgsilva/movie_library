class ActorsController < ApplicationController
  before_action :check_for_login

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find params[:id]
  end

  def edit
    @actor = Actor.find params[:id]
  end

  def update
    actor = Actor.find params[:id]
    actor.update actor_params
    redirect_to actor
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new actor_params
    @actor.save
    redirect_to @actor
  end

  def destroy
    @actor = Actor.find params[:id]
    @actor.destroy
    redirect_to actors_path
  end

  private
  def actor_params
    params.require(:actor).permit(:name, :image, :movies)
  end
end

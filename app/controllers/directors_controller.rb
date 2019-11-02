class DirectorsController < ApplicationController
  before_action :check_for_login

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find params[:id]
  end

  def edit
    @director = Director.find params[:id]
  end

  def update
    director = Director.find params[:id]
    director.update director_params
    redirect_to director
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new director_params
    @director.save
    redirect_to @director
  end

  def destroy
    @director = Director.find params[:id]
    @director.destroy
    redirect_to directors_path
  end

  private
  def director_params
    params.require(:director).permit(:name, :image, :movies)
  end
end

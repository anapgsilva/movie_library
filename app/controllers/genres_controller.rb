class GenresController < ApplicationController
  before_action :check_for_login

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find params[:id]
  end

  def edit
    @genre = Genre.find params[:id]
  end

  def update
    genre = Genre.find params[:id]
    genre.update genre_params
    redirect_to genre
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create genre_params
    @genre.save
    redirect_to @genre
  end

  def destroy
    @genre = Genre.find params[:id]
    @genre.destroy
    redirect_to genres_path
  end

  private
  def genre_params
    params.require(:genre).permit(:name, :movies)
  end
end

class LibrariesController < ApplicationController
  before_action :check_for_login

  def index
    @libraries = @current_user.libraries.all
  end

  def show
    @library = @current_user.libraries.find params[:id]
  end

  def edit
    @library = @current_user.libraries.find params[:id]
    # Add a movie to a library from movie show page
    @movie = Movie.find movie_params
    @library << @movie
  end

  def update
    library = @current_user.libraries.find params[:id]
    library.update library_params
    redirect_to library
  end

  def new
    @library = Library.new
  end

  def create
    library = Library.create library_params
    @current_user.libraries << library
    redirect_to library
  end

  def destroy
    @library = Library.find params[:id]
    @library.destroy
    redirect_to libraries_path
  end

  private

  def library_params
    params.require(:library).permit(:name, :user, :movies)
  end

end

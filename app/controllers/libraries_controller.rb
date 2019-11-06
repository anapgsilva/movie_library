class LibrariesController < ApplicationController
  before_action :check_for_login

  def index
    libraries = @current_user.libraries
    @libraries = libraries.sort_by { |library| library[:name]}
  end

  def show
    @library = @current_user.libraries.find params[:id]

    if params[:query].present?
      query = params[:query].titleize
      url = "https://movie-database-imdb-alternative.p.rapidapi.com/?page=1&r=json&s=#{query.downcase.split.join("+")}"
      movies_data = Movie.get_movies url

      if movies_data.body["Search"] != nil
        @imdb_result = movies_data.body["Search"][0..9]
      else
        @message = "No results were found."
      end
    end
  end

  def edit
    @library = @current_user.libraries.find params[:id]
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
    redirect_to libraries_path
  end

  def destroy
    @library = Library.find params[:id]
    @library.destroy
    redirect_to libraries_path
  end

  def add_or_remove
    @movie = Movie.find params[:id]
    action = params[:commit]

    if action == "Add to"
      params[:library_id].each do |lib_id|
        library = Library.find lib_id
        library.movies << @movie unless library.movies.include? @movie
      end
    elsif action == "Remove from"
      params[:library_id].each do |lib_id|
        library = Library.find lib_id
        library.movies.delete(@movie) if library.movies.include? @movie
      end
    end
    redirect_to @movie
  end

  private

  def library_params
    params.require(:library).permit(:name, :user_id, :movie_id)
  end

end

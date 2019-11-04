class CreateAddMovieImdbIdToMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :add_movie_imdb_id_to_movies do |t|
      t.integer :movie_imdbID

      t.timestamps
    end
  end
end

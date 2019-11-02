class CreateLibrariesMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries_movies, :id => false do |t|
      t.integer :library_id
      t.integer :movie_id
    end
  end
end

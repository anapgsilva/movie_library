class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.text :title
      t.text :cover
      t.text :year
      t.integer :duration
      t.text :synopsis
      t.integer :director_id
      t.integer :user_id
      t.text :imdbID

      t.timestamps
    end
  end
end

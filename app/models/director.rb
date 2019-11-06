class Director < ApplicationRecord
  has_many :movies
  has_many :actors, :through => :movies
  has_many :genres, :through => :movies
  has_many :libraries, :through => :movies

  include PgSearch
  pg_search_scope :search, against: [:name],
    using: {tsearch: {dictionary: 'english'}},
    associated_against: {movies: :title, actors: :name, genres: :name, libraries: :name}

  def self.text_search query
    if query.present?
      search(query)
    else
      scoped
    end
  end

end

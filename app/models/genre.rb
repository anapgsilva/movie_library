class Genre < ApplicationRecord
  has_and_belongs_to_many :movies
  # has_many :actors, :through => :movies
  # has_many :directors, :through => :movies
  # has_many :libraries, :through => :movies

  #pg search gem
  include PgSearch
  pg_search_scope :search, against: [:name],
    using: {tsearch: {dictionary: 'english'}},
    associated_against: {movies: :title, actors: :name, directors: :name, libraries: :name}

  def self.text_search query
    if query.present?
      search(query)
    else
      scoped
    end
  end
  #end of pg search gem

end

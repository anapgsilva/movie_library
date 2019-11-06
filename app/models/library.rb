class Library < ApplicationRecord
  has_and_belongs_to_many :movies
  belongs_to :user, :optional => true
  has_many :actors, :through => :movies
  has_many :genres, :through => :movies
  has_many :directors, :through => :movies

  #pg search gem
  include PgSearch
  pg_search_scope :search, against: [:name],
    using: {tsearch: {dictionary: 'english'}},
    associated_against: {movies: :title, actors: :name, genres: :name, directors: :name}

  def self.text_search query
    if query.present?
      search(query)
    else
      scoped
    end
  end
  #end of pg search gem
end

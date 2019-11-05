class Movie < ApplicationRecord
  belongs_to :director, :optional => true;
  belongs_to :user
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :libraries, :optional => true;

  # include PgSearch::Model
  # term1 = Movie.title.split.first
  # term2 = Movie.title.split.second
  # term3 = Movie.title.split.third
  # last_term = Movie.title.split.last
  # pg_search_scope :search_by_full_name, against: [term1, term2, term3,last_term]
end

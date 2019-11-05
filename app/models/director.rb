class Director < ApplicationRecord
  # include PgSearch::Model
  # first_name = Director.name.split.first
  # last_name = Director.name.split.last
  # pg_search_scope :search_by_full_name, against: [first_name, last_name]

  has_many :movies
  has_many :actors, :through => :movies
  has_many :genres, :through => :movies
end

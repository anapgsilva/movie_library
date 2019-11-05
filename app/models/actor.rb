class Actor < ApplicationRecord
  # include PgSearch::Model
  # first_name = Actor.name.split.first
  # last_name = Actor.name.split.last
  # pg_search_scope :search_by_full_name, against: [first_name, last_name]

  has_and_belongs_to_many :movies
  has_many :genres, :through => :movies
  has_many :directors, :through => :movies
end

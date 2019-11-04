class Library < ApplicationRecord
  has_and_belongs_to_many :movies
  belongs_to :user, :optional => true
  has_many :actors, :through => :movies
  has_many :genres, :through => :movies
  has_many :directors, :through => :movies
end

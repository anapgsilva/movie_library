class Movie < ApplicationRecord
  belongs_to :director, :optional => true;
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :libraries
end

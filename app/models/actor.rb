class Actor < ApplicationRecord
  has_and_belongs_to_many :movies
  has_many :genres, :through => :movies
  has_many :directors, :through => :movies
end

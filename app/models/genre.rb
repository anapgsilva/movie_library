class Genre < ApplicationRecord
  has_and_belongs_to_many :movies
  has_many :actors, :through => :movies
  has_many :directors, :through => :movies
end

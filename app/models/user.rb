class User < ApplicationRecord
  has_many :movies
  has_many :libraries
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :actors, :through => :movies
  has_many :genres, :through => :movies
  has_many :directors, :through => :movies
end

class Library < ApplicationRecord
  has_and_belongs_to_many :movies
  belongs_to :user, :optional => true
end

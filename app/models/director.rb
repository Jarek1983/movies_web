class Director < ApplicationRecord
  has_many :directors_movies
  has_many :movies, through: :directors_movies
end

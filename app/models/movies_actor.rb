class MoviesActors < ApplicationRecord
  belongs_to :movie
  belongs_to :actor
end
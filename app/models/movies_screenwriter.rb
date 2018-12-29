class MoviesScreenwriter < ApplicationRecord
  belongs_to :movie
  belongs_to :screenwriter
end

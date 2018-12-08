class Comment < ApplicationRecord
  validates :commenter, presence: true, length: { minimum: 2 }
  validates :body, presence: true, length: { minimum: 5 }
  validates :rating, presence: true

  belongs_to :movie
end

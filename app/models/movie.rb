class Movie < ApplicationRecord

  validates :name, presence: true, length: {minimum: 2}
  validates :premiere_date, presence: true
  validates :length, presence: true, length: {minimum: 1}
  validates :description, presence: true, length: {minimum: 1}
  validates :genre, length: {minimum: 5}
  validates :director, presence: true
  validates :scenarist, presence: true
  validates :country, presence: true, length: {minimum: 3}
  
end

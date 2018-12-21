class Movie < ApplicationRecord

  validates :name, presence: true, length: {minimum: 2}
  validates :premiere_date, presence: true
  validates :length, presence: true, length: {minimum: 1}
  validates :description, presence: true, length: {minimum: 1}
  validates :genre, length: {minimum: 5}
  validates :director, presence: true
  validates :scenarist, presence: true
  validates :country, presence: true
  
    has_many :comments, dependent: :destroy
    belongs_to :user
  # has_many :comments, through: :comments_movies,
            # dependent: :destroy
  # has_many :comments_movies

  def self.search(params)
		movies = Movie.where("description LIKE ? or name LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
		movies	
	end
  
end

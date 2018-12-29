class Director < ApplicationRecord
  has_many :directors_movies
  has_many :movies, through: :directors_movies

  def self.search(params)
		directors = Director.where("name LIKE ?", "%#{params[:search]}%") if params[:search].present?
		directors	
  end
end

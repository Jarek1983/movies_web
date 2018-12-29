class Movie < ApplicationRecord

  validates :name, presence: true, length: {minimum: 2}
  validates :premiere_date, presence: true
  validates :length, presence: true, length: {minimum: 1}
  validates :description, presence: true, length: {minimum: 1}
  validates :country, presence: true
  
    has_many :comments, dependent: :destroy
    belongs_to :user
    has_many :genres_movies
    has_many :genres, through: :genres_movies
    has_many :directors_movies
    has_many :directors, through: :directors_movies
    has_many :actors_movies
    has_many :actors, through: :actors_movies

    has_many :movies_screenwriters
    has_many :screenwriters, through: :movies_screenwriters

    has_attached_file :movie, style:
      {
        medium: {geometry: "100x50", format: 'mp4'},
        thumb: {geometry: "50x50", format: 'jpg', time: 10} 
      }, processor: [:transcoder]
  validates_attachment_content_type :movie, content_type: /\Avideo\/.*\z/

  def self.search(params)
		movies = Movie.where("name LIKE ?", "%#{params[:search]}%") if params[:search].present?
		movies	
	end
  
end

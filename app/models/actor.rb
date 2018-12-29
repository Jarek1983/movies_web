class Actor < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2}
  validates :birthday, presence: true
  validates :description, presence: true, length: {minimum: 1}
  validates :country, presence: true
  
  has_attached_file :photo, style: {large: "450x450", thumb: "50x50#"}
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

    belongs_to :user
    has_many :actors_movies
    has_many :movies, through: :actors_movies

  def self.search(params)
		actors = Actor.where("name LIKE ?", "%#{params[:search]}%") if params[:search].present?
		actors	
	end
end

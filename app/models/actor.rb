class Actor < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2}
  validates :surname, presence: true, length: {minimum: 2}
  validates :birthday, presence: true
  validates :description, presence: true, length: {minimum: 1}
  validates :country, presence: true
  validates :movies, presence: true
  
    belongs_to :user
    # belongs_to :movie

  has_attached_file :photo, style: {large: "450x450", thumb: "50x50#"}
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  def self.search(params)
		actors = Actor.where("name LIKE ? or surname LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
		actors	
	end
end

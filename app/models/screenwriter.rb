class Screenwriter < ApplicationRecord
  has_many :movies_screenwriters
  has_many :movies, through: :movies_screenwriters

  def self.search(params)
		screenwriters = Screenwriter.where("name LIKE ?", "%#{params[:search]}%") if params[:search].present?
		screenwriters	
  end
end

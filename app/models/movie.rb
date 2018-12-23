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
    # has_many :actors

    has_attached_file :movie, :style =>
      {
        :medium => {:geometry => "100x50", :format => 'mp4'},
        :thumb => {:geometry => "50x50", :format => 'jpg', :time => 10} 
      }, :processor => [:transcoder]
  validates_attachment_content_type :movie, content_type: /\Avideo\/.*\z/

  def self.search(params)
		movies = Movie.where("description LIKE ? or name LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
		movies	
	end
  
end

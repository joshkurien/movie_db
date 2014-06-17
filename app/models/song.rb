class Song < ActiveRecord::Base
	belongs_to :movie
	has_many :ratings, as: :ratable, dependent: :destroy

	validates_associated :movie, :rating
	validates_presence_of :movie
end

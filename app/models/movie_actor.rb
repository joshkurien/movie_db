	class MovieActor < ActiveRecord::Base
	belongs_to :actor
	belongs_to :movie

	validates_associated :actor, :movie
	validates_presence_of :actor, :movie
end

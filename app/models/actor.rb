class Actor < ActiveRecord::Base
	has_many :movie_actors, dependent: :destroy
	has_many :movies, through: :movie_actors

	validates_uniqueness_of :name

	def cap_name
		self.name= name.titleize
  end
end

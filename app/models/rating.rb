class Rating < ActiveRecord::Base
	belongs_to :user
	belongs_to :ratable, polymorphic: true

	validates_associated :user

	validates_presence_of :user
end

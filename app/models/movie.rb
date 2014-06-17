class Movie < ActiveRecord::Base  
  has_many :songs, dependent: :destroy
  has_many :movie_actors, dependent: :destroy
  has_many :actors, through: :movie_actors
  has_many :ratings, as: :ratable, dependent: :destroy


  validates :name, presence: true, uniqueness: true

  accepts_nested_attributes_for :songs, :movie_actors, allow_destroy: true

 # validates_associated :ratings

  before_create :cap_name
  after_save :is_saved?

  def cap_name
    self.name= name.titleize
  end

  def is_saved?
    if ! self.new_record?
      puts "Record saved"
    end
  end
end


class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
  has_many :ratings, dependent: :destroy

  accepts_nested_attributes_for :ratings, allow_destroy: true

#	validates :email, format: /\A.+[@].+\..+\z/
  validates_presence_of :name
#	validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
	validates_uniqueness_of :name

	validates :password, presence: true, length: {minimum: 5}

  validate :valid_password

  def valid_password
    errors.add(:password, "Does not have any capital letters") unless /[A-Z]/.match(self.password)
    errors.add(:password, "Does not have any small letters") unless /[a-z]/.match(self.password)
    errors.add(:password, "Does not have any digit") unless /[0-9]/.match(self.password)
    errors.add(:password, "Does not have any special characters") unless /[\w]/.match(self.password)
  end

end
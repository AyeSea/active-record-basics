class User < ActiveRecord::Base
	before_save { email.downcase! }
	validates :username, presence: true, uniqueness: true,
					   length: { in: 5..20 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: { case_sensitive: false },
						 length: { in: 5..35 }
						 format: { with: VALID_EMAIL_REGEX }
	validates :password, presence: true, uniqueness: true,
						 length: { in: 8..30 }

	has_many :posts
	has_many :comments
end
class User < ActiveRecord::Base
	validates :username, presence: true, uniqueness: true,
					   length: { in: 5..20 }
	validates :email, presence: true, uniqueness: { case_sensitive: false },
						 length: { in: 5..35 }
	validates :password, presence: true, uniqueness: true,
						 length: { in: 8..30 }
end

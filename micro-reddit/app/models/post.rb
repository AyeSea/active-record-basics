class Post < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true,
						 length: { maximum: 50 }
	validates :body, presence: true, length: { maximum: 500, 
						 too_long: "Whoa, you can't write that many characters!" }
	validates :user_id, presence: true
	
	belongs_to :user
	has_many :comments
end
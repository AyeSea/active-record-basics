class Comment < ActiveRecord::Base
	validates :post_id, presence: true
	validates :body, presence: true, length: { maximum: 100, 
						 message: "Your comment is way too long!" }
	belongs_to :post
	belongs_to :user
end

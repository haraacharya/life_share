class DateIdea < ActiveRecord::Base
	
	belongs_to :user
	has_many :comments
	has_many :votes

	attr_accessible :dateidea, :place, :city, :zip_code

	validates :dateidea, presence: true

	def vote_number
		votes.where(:direction => "up").count - votes.where(direction: "down").count
	end
	
end

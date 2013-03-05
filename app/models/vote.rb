class Vote < ActiveRecord::Base

	belongs_to :user
	belongs_to :date_idea

	attr_accessible :direction

end
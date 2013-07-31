class UserConversation < ActiveRecord::Base
	belongs_to :user
	belongs_to :conversation
	has_many :messages, :through => :conversation

	accepts_nested_attributes_for :conversation
	delegate :subject, :to => :conversation
	delegate :users, :to => :conversation

end	
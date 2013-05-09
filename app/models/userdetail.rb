class Userdetail < ActiveRecord::Base

	belongs_to :user

	attr_accessible :year_of_birth, :month_of_birth, :date_of_birth, :location, :country, :zip_code, :image, 
	:status, :interest, :name, :gender

	mount_uploader :image, ImageUploader

	validates :name, :gender, :location, :status, :country,  :year_of_birth, presence: true

	validate :birthyear_check

	def birthyear_check
		errors.add(:year_of_birth, "Please provide correct year of birth.") if 
			year_of_birth.to_i > Time.now.year - 14 or year_of_birth.to_i < Time.now.year - 95

	end

end
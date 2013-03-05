class Userdetail < ActiveRecord::Base

	belongs_to :user

	attr_accessible :year_of_birth, :month_of_birth, :date_of_birth, :location, :country, :zip_code, :image, 
	:status, :interest, :name, :gender

	mount_uploader :image, ImageUploader

	validates :name, :gender, :location, :status, :country,  :year_of_birth, presence: true

end
class UserDetails < ActiveRecord::Migration
	
	def change
		create_table :userdetails do |t|
			t.integer :user_id
			t.integer :year_of_birth
			t.string :month_of_birth
			t.integer :date_of_birth
			t.string :location
			t.string :country
			t.integer :zip_code
			t.string :image
			t.string :status
			t.text :interest

			t.timestamps

		end

	end

end

class CreateComments < ActiveRecord::Migration
	def change
		create_table :comments do |t|
			t.integer :date_idea_id
			t.integer :user_id
			t.text :reply

			t.timestamps
		end
	end
end

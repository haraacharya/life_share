class CreateDateIdeas < ActiveRecord::Migration
  def change
    create_table :date_ideas do |t|
    	t.integer :user_id
    	t.text :dateidea

    	t.string :place
    	t.string :city
    	t.integer :zip_code
    	
    	t.timestamps
    end
  end
end

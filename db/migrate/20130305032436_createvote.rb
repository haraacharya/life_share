class Createvote < ActiveRecord::Migration
  
  def change
  	create_table :votes do |t|
  		t.integer :date_idea_id
  		t.integer :user_id
  		t.string :direction

  		t.timestamps
  	end	
  end

end

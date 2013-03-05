class AddGenderToUserdetails < ActiveRecord::Migration
  def change
    add_column :userdetails, :gender, :string
  end
end

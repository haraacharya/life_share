class AddNameToUserdetail < ActiveRecord::Migration
  def change
    add_column :userdetails, :name, :string
  end
end

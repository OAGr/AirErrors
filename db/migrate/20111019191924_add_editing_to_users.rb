class AddEditingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :editing, :boolean
    
  end
end

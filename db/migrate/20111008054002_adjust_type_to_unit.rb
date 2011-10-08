class AdjustTypeToUnit < ActiveRecord::Migration
  def up
    add_column :units, :unit_type, :string, :default => "Air Conditioner"
    remove_column :units, :type
    change_column :errors, :action, :text    
  end

  def down
    add_column :units, :type
    remove_column :units, :unit_type, :string
  end
end

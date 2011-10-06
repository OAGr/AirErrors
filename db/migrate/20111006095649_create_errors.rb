class CreateErrors < ActiveRecord::Migration
  def change
    create_table :errors do |t|
      t.string :name
      t.string :identification
      t.string :message
      t.string :action
      t.integer :unit_id

      t.timestamps
    end
  end
end

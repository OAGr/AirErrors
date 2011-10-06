class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :user_guide
      t.string :install_guide
      t.string :type
      t.integer :company_id

      t.timestamps
    end
  end
end

class CreateDietManagers < ActiveRecord::Migration
  def change
    create_table :diet_managers do |t|
      t.integer :user_id
      t.integer :diet_id

      t.timestamps
    end
  end
end

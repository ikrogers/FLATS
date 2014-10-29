class CreateDietManagers < ActiveRecord::Migration
  def change
    create_table :diet_managers do |t|

      t.timestamps
    end
  end
end

class CreateExerciseManagers < ActiveRecord::Migration
  def change
    create_table :exercise_managers do |t|

      t.timestamps
    end
  end
end

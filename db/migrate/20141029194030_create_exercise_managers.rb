class CreateExerciseManagers < ActiveRecord::Migration
  def change
    create_table :exercise_managers do |t|
      t.integer :user_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end

class CreateExerciseManagers < ActiveRecord::Migration
  def change
    create_table :exercise_managers do |t|
      t.intteger :user_id
      t.integer :ex_id

      t.timestamps
    end
  end
end

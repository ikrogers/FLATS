class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.text :name,        null: false, default: ""
      t.text :descr,          null: false, default: ""
      t.decimal :calories,    null: false, default: 0.0
      t.integer :intensity,   null: false, default: 0
      t.text :video,        null: false, default: ""

      t.timestamps
    end
  end
end

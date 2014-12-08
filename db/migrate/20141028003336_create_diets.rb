class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.text :name,      null: false, default: ""
      t.text :descr,        null: false, default: ""
      t.decimal :calories,  null: false, default: 0.0
      t.decimal :intensity, null: false, default: 0

      t.timestamps
    end
  end
end

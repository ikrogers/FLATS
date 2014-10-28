class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :fName,      null: false, default: ""
      t.text :descr,        null: false, default: ""
      t.decimal :calories,  null: false, default: 0.0

      t.timestamps
    end
  end
end

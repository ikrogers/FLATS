# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141029194052) do

  create_table "diet_managers", force: true do |t|
    t.integer  "user_id"
    t.integer  "diet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diets", force: true do |t|
    t.string   "name",       default: "",  null: false
    t.text     "descr",      default: "",  null: false
    t.decimal  "calories",   default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercise_managers", force: true do |t|
    t.integer  "user_id"
    t.integer  "ex_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", force: true do |t|
    t.string   "name",       default: "",  null: false
    t.text     "descr",      default: "",  null: false
    t.decimal  "calories",   default: 0.0, null: false
    t.integer  "intensity",  default: 0,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.text     "fname"
    t.text     "lname"
    t.integer  "u_type"
    t.text     "gender"
    t.datetime "bday"
    t.integer  "weight"
    t.integer  "height"
    t.integer  "ex_score"
    t.integer  "diet_score"
    t.boolean  "diet_fitness_flag"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

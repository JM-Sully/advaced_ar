# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_04_121052) do

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "company"
    t.string "position_id"
    t.integer "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_jobs_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.integer "age"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "login"
    t.string "pass"
  end

  create_table "personal_infos", force: :cascade do |t|
    t.float "height"
    t.float "weight"
    t.integer "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_personal_infos_on_person_id"
  end

  add_foreign_key "jobs", "people"
  add_foreign_key "personal_infos", "people"
end

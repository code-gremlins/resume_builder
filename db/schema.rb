# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_25_203817) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experiences", force: :cascade do |t|
    t.text "description"
    t.bigint "positions_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["positions_id"], name: "index_experiences_on_positions_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "company_name"
    t.string "title"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_positions_on_users_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.bigint "experience_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_skills_on_experience_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "citizenship"
    t.string "veteran_status"
    t.string "gender"
    t.string "ethnicity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "experiences", "positions", column: "positions_id"
  add_foreign_key "positions", "users", column: "users_id"
  add_foreign_key "skills", "experiences"
end

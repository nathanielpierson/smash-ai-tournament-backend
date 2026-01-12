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

ActiveRecord::Schema[8.0].define(version: 2026_01_12_200848) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "contestants", force: :cascade do |t|
    t.string "name"
    t.string "character"
    t.string "category"
    t.integer "slot_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "contestant_one_id"
    t.string "contestant_two_id"
    t.string "integer"
    t.string "youtube_link"
    t.string "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matchups", force: :cascade do |t|
    t.bigint "contestant_one_id", null: false
    t.bigint "contestant_two_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contestant_one_id"], name: "index_matchups_on_contestant_one_id"
    t.index ["contestant_two_id"], name: "index_matchups_on_contestant_two_id"
  end

  add_foreign_key "matchups", "contestants", column: "contestant_one_id"
  add_foreign_key "matchups", "contestants", column: "contestant_two_id"
end

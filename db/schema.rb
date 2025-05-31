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

ActiveRecord::Schema[8.0].define(version: 2025_05_31_020644) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "block2_survey_responses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "q1"
    t.string "q2"
    t.string "q3"
    t.string "q4"
    t.string "q5"
    t.string "q6"
    t.text "qoa1"
    t.text "qoa2"
    t.text "qoa3"
    t.text "qoa4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_block2_survey_responses_on_user_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "ip_address"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "survey_responses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "q1"
    t.string "q2"
    t.string "q3"
    t.string "q4"
    t.string "q5"
    t.string "q6"
    t.string "q7"
    t.string "q8"
    t.string "q9"
    t.string "q10"
    t.string "q11"
    t.string "q12"
    t.string "q13"
    t.string "q14"
    t.string "q15"
    t.string "q16"
    t.boolean "q17a"
    t.boolean "q17b"
    t.boolean "q17c"
    t.boolean "q17d"
    t.boolean "q17e"
    t.boolean "q18f"
    t.boolean "q18g"
    t.boolean "q18h"
    t.boolean "q18i"
    t.text "qoa1"
    t.text "qoa2"
    t.string "q19"
    t.string "q20"
    t.text "qoa3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "q17"
    t.text "q18"
    t.string "q21"
    t.string "q22"
    t.text "q23"
    t.index ["user_id"], name: "index_survey_responses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.string "rut"
    t.date "birthdate"
    t.string "position"
    t.string "phone_number"
    t.integer "mesa"
    t.string "campus"
    t.string "area"
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  create_table "words", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "block2_survey_responses", "users"
  add_foreign_key "sessions", "users"
  add_foreign_key "survey_responses", "users"
end

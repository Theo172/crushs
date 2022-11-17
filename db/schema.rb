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

ActiveRecord::Schema[7.0].define(version: 2022_11_17_150530) do
  create_table "age_ranges", force: :cascade do |t|
    t.integer "min"
    t.integer "max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crush_icebreaker_questions", force: :cascade do |t|
    t.string "crush_id"
    t.string "icebreaker_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crush_messages", force: :cascade do |t|
    t.text "content"
    t.string "profil_crush_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crushes", force: :cascade do |t|
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "icebreaker_question_answers", force: :cascade do |t|
    t.text "content"
    t.string "profil_crush_id"
    t.string "crush_icebreaker_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "icebreaker_questions", force: :cascade do |t|
    t.string "answer1"
    t.string "answer2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.string "created_by"
    t.string "trageted_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "profil_id"
    t.text "image_url"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile_crushes", force: :cascade do |t|
    t.string "crush_id"
    t.string "profil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profils", force: :cascade do |t|
    t.text "name"
    t.date "birth_date"
    t.string "city_id"
    t.string "prefered_gender"
    t.text "email"
    t.text "password"
    t.string "gender_id"
    t.string "age_range_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "gender"
  end

end

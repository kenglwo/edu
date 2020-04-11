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

ActiveRecord::Schema.define(version: 2020_04_10_133311) do

  create_table "englishes", force: :cascade do |t|
    t.string "student_id"
    t.string "sentence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sentence_num"
    t.text "subject"
    t.text "verb"
  end

  create_table "japaneses", force: :cascade do |t|
    t.text "student_id"
    t.text "sentence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "subject"
    t.text "verb"
    t.integer "sentence_num"
  end

  create_table "student_infos", force: :cascade do |t|
    t.text "student_id"
    t.text "student_name"
    t.integer "score_toeic"
    t.integer "score_toefl"
    t.integer "score_eiken"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "theme"
  end

end

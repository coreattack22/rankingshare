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

ActiveRecord::Schema.define(version: 20180628235404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer "ranking_id", null: false
    t.integer "user_id", null: false
    t.string "comment"
    t.integer "answer1", default: 0
    t.integer "answer2", default: 0
    t.integer "answer3", default: 0
    t.integer "answer4", default: 0
    t.integer "answer5", default: 0
    t.integer "answer6", default: 0
    t.integer "answer7", default: 0
    t.integer "answer8", default: 0
    t.integer "answer9", default: 0
    t.integer "answer10", default: 0
    t.integer "answer11", default: 0
    t.integer "answer12", default: 0
    t.integer "answer13", default: 0
    t.integer "answer14", default: 0
    t.integer "answer15", default: 0
    t.integer "answer16", default: 0
    t.integer "answer17", default: 0
    t.integer "answer18", default: 0
    t.integer "answer19", default: 0
    t.integer "answer20", default: 0
    t.integer "answer21", default: 0
    t.integer "answer22", default: 0
    t.integer "answer23", default: 0
    t.integer "answer24", default: 0
    t.integer "answer25", default: 0
    t.integer "answer26", default: 0
    t.integer "answer27", default: 0
    t.integer "answer28", default: 0
    t.integer "answer29", default: 0
    t.integer "answer30", default: 0
    t.integer "answer31", default: 0
    t.integer "answer32", default: 0
    t.integer "answer33", default: 0
    t.integer "answer34", default: 0
    t.integer "answer35", default: 0
    t.integer "answer36", default: 0
    t.integer "answer37", default: 0
    t.integer "answer38", default: 0
    t.integer "answer39", default: 0
    t.integer "answer40", default: 0
    t.integer "answer41", default: 0
    t.integer "answer42", default: 0
    t.integer "answer43", default: 0
    t.integer "answer44", default: 0
    t.integer "answer45", default: 0
    t.integer "answer46", default: 0
    t.integer "answer47", default: 0
    t.integer "answer48", default: 0
    t.integer "answer49", default: 0
    t.integer "answer50", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ranking_id", "user_id"], name: "index_answers_on_ranking_id_and_user_id", unique: true
  end

  create_table "rankings", force: :cascade do |t|
    t.integer "maker_id"
    t.string "title"
    t.integer "ranked_count"
    t.datetime "answerd_at"
    t.string "element1"
    t.string "element2"
    t.string "element3"
    t.string "element4"
    t.string "element5"
    t.string "element6"
    t.string "element7"
    t.string "element8"
    t.string "element9"
    t.string "element10"
    t.string "element11"
    t.string "element12"
    t.string "element13"
    t.string "element14"
    t.string "element15"
    t.string "element16"
    t.string "element17"
    t.string "element18"
    t.string "element19"
    t.string "element20"
    t.string "element21"
    t.string "element22"
    t.string "element23"
    t.string "element24"
    t.string "element25"
    t.string "element26"
    t.string "element27"
    t.string "element28"
    t.string "element29"
    t.string "element30"
    t.string "element31"
    t.string "element32"
    t.string "element33"
    t.string "element34"
    t.string "element35"
    t.string "element36"
    t.string "element37"
    t.string "element38"
    t.string "element39"
    t.string "element40"
    t.string "element41"
    t.string "element42"
    t.string "element43"
    t.string "element44"
    t.string "element45"
    t.string "element46"
    t.string "element47"
    t.string "element48"
    t.string "element49"
    t.string "element50"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "delete_flg", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "provider", default: "", null: false
    t.string "uid", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

end

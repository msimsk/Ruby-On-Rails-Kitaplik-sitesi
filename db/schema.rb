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

ActiveRecord::Schema.define(version: 2018_12_24_182039) do

  create_table "kitaps", force: :cascade do |t|
    t.string "isim"
    t.integer "sayfa"
    t.text "ozet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "resim_file_name"
    t.string "resim_content_type"
    t.bigint "resim_file_size"
    t.datetime "resim_updated_at"
    t.integer "user_id"
    t.index ["user_id"], name: "index_kitaps_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "yazars", force: :cascade do |t|
    t.string "isim"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yorums", force: :cascade do |t|
    t.string "mesaj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kitap_id"
    t.integer "user_id"
    t.index ["kitap_id"], name: "index_yorums_on_kitap_id"
    t.index ["user_id"], name: "index_yorums_on_user_id"
  end

end

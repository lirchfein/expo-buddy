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

ActiveRecord::Schema.define(version: 2018_11_28_131455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "expo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expo_id"], name: "index_bookmarks_on_expo_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "exhibitors", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.string "location"
    t.string "description"
    t.string "product_category"
    t.bigint "expo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hall"
    t.string "stand"
    t.index ["expo_id"], name: "index_exhibitors_on_expo_id"
  end

  create_table "expos", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.string "cover_pic"
    t.integer "exhibitors_num"
    t.integer "visitors_num"
    t.integer "square_meters"
    t.string "description"
    t.string "city"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "exhibitor_id"
    t.boolean "visited", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exhibitor_id"], name: "index_favorites_on_exhibitor_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "pic"
    t.bigint "user_id"
    t.bigint "exhibitor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exhibitor_id"], name: "index_pictures_on_exhibitor_id"
    t.index ["user_id"], name: "index_pictures_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookmarks", "expos"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "exhibitors", "expos"
  add_foreign_key "favorites", "exhibitors"
  add_foreign_key "favorites", "users"
  add_foreign_key "pictures", "exhibitors"
  add_foreign_key "pictures", "users"
end

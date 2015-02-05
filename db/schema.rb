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

ActiveRecord::Schema.define(version: 20150205232111) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "places", force: true do |t|
    t.string   "title",                              null: false
    t.decimal  "price",      precision: 7, scale: 2, null: false
    t.decimal  "utilities",  precision: 7, scale: 2
    t.decimal  "deposit",    precision: 7, scale: 2
    t.string   "preference",                         null: false
    t.date     "start_date",                         null: false
    t.date     "end_date"
    t.string   "laundry",                            null: false
    t.string   "agreement",                          null: false
    t.string   "email"
    t.string   "phonenum"
    t.string   "desc",                               null: false
    t.string   "address",                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "room"
    t.integer  "user_id",                            null: false
  end

  create_table "users", force: true do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end

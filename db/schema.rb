ActiveRecord::Schema.define(version: 20150203220827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "places", force: true do |t|
    t.string   "title",                              null: false
    t.decimal  "price",      precision: 7, scale: 2, null: false
    t.decimal  "utilities",  precision: 7, scale: 2
    t.decimal  "deposit",    precision: 7, scale: 2
    t.string   "type",                               null: false
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

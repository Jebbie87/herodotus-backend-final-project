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

ActiveRecord::Schema.define(version: 20170205111404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "movie_id"
    t.text     "comment"
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_comments_on_movie_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.string   "rated"
    t.string   "released"
    t.string   "runtime"
    t.string   "genre"
    t.string   "director"
    t.string   "writer"
    t.string   "actors"
    t.text     "plot"
    t.string   "language"
    t.string   "country"
    t.string   "awards"
    t.string   "poster"
    t.integer  "metascore"
    t.integer  "imdbrating"
    t.string   "imdbid"
    t.text     "keywords"
    t.integer  "set_start_year"
    t.string   "start_ad_bc"
    t.string   "set_start_year_accurate"
    t.integer  "set_end_year"
    t.string   "end_ad_bc"
    t.string   "set_end_year_accurate"
    t.string   "setting_location"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "youtube_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "movie_id"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_notes_on_movie_id", using: :btree
    t.index ["user_id"], name: "index_notes_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end

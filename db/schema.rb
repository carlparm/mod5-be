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

ActiveRecord::Schema.define(version: 2020_05_19_180513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.string "spotify_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "genre"
    t.string "spotify_uri"
    t.integer "popularity"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "ticketmaster_id"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img_url"
    t.string "date"
    t.string "google_key"
    t.string "url"
  end

  create_table "user_artists", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "artist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_user_artists_on_artist_id"
    t.index ["user_id"], name: "index_user_artists_on_user_id"
  end

  create_table "user_events", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_user_events_on_event_id"
    t.index ["user_id"], name: "index_user_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "spotify_id"
    t.string "location"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img_url"
  end

  add_foreign_key "user_artists", "artists"
  add_foreign_key "user_artists", "users"
  add_foreign_key "user_events", "events"
  add_foreign_key "user_events", "users"
end

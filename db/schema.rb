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

ActiveRecord::Schema[7.1].define(version: 2023_12_02_032211) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chart_entries", force: :cascade do |t|
    t.integer "position"
    t.integer "last_week_position"
    t.integer "peak_position"
    t.integer "weeks_on_chart"
    t.bigint "track_id"
    t.date "chart_entry_date"
    t.integer "entry_position"
    t.integer "overall_peak_position"
    t.integer "overall_weeks_on_chart"
    t.bigint "chart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chart_id"], name: "index_chart_entries_on_chart_id"
    t.index ["track_id"], name: "index_chart_entries_on_track_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "name"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_tracks_on_artist_id"
  end

  add_foreign_key "tracks", "artists"
end

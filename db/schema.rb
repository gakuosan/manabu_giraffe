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

ActiveRecord::Schema.define(version: 2019_05_27_091441) do

  create_table "rent_houses", force: :cascade do |t|
    t.string "home_name"
    t.string "rent"
    t.string "address"
    t.string "age"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "station_name"
    t.string "walking_minutes"
    t.string "along_the_line"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "title"
    t.string "rent_station_id"
    t.integer "rent_house_id"
  end

end

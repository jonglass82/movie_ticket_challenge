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

ActiveRecord::Schema.define(version: 2020_01_30_190420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auditoria", force: :cascade do |t|
    t.string "space_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "capacity"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: true
    t.string "length"
    t.string "image_url"
    t.string "rating"
    t.string "run_time"
    t.string "genre"
    t.string "director"
    t.string "actors"
    t.string "plot"
    t.string "production"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "ticket_id"
    t.string "customer_name"
    t.string "customer_email"
    t.string "cc_number"
    t.string "cc_exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "showtimes", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "auditorium_id"
    t.string "time"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "showtime_id"
  end

end

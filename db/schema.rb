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

ActiveRecord::Schema.define(version: 2018_06_22_161426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
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
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "event_guests", force: :cascade do |t|
    t.bigint "guest_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_guests_on_event_id"
    t.index ["guest_id"], name: "index_event_guests_on_guest_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_students", force: :cascade do |t|
    t.bigint "students_id"
    t.bigint "events_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["events_id"], name: "index_events_students_on_events_id"
    t.index ["students_id"], name: "index_events_students_on_students_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "company_website"
    t.string "email"
    t.string "linkedin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "linkedin"
    t.string "email"
    t.string "portfolio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "event_guests", "events"
  add_foreign_key "event_guests", "guests"
  add_foreign_key "events_students", "events", column: "events_id"
  add_foreign_key "events_students", "students", column: "students_id"
end

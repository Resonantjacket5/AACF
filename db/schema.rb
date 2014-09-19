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

ActiveRecord::Schema.define(version: 20140919034802) do

  create_table "carousel_items", force: true do |t|
    t.text     "img_url"
    t.boolean  "disable"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "large_groups", force: true do |t|
    t.text     "weekday"
    t.text     "location"
    t.text     "description"
    t.time     "event_time"
    t.text     "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leaders", force: true do |t|
    t.text     "position"
    t.text     "name"
    t.text     "year"
    t.text     "major"
    t.text     "hometown"
    t.text     "email"
    t.text     "strange_fact"
    t.text     "interests"
    t.text     "leadership_position"
    t.boolean  "graduated"
    t.boolean  "contact_ok"
    t.text     "past_positions"
    t.text     "post_grad_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "img_url"
  end

  create_table "prayer_times", force: true do |t|
    t.text     "location"
    t.time     "event_time"
    t.text     "weekday"
    t.text     "img_url"
    t.boolean  "image_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "small_groups", force: true do |t|
    t.text     "leaders"
    t.text     "img_url"
    t.text     "location"
    t.text     "weekday"
    t.time     "event_time"
    t.text     "topic"
    t.text     "contact"
    t.text     "leaders_note_1"
    t.boolean  "leaders_note_1_active"
    t.text     "leaders_note_2"
    t.boolean  "leaders_note_2_active"
    t.text     "leaders_note_3"
    t.boolean  "leaders_note_3_active"
    t.boolean  "disabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "static_texts", force: true do |t|
    t.text     "title"
    t.text     "body"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "upcoming_events", force: true do |t|
    t.text     "title"
    t.text     "description"
    t.text     "location"
    t.datetime "event_time"
    t.text     "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.boolean  "approved",               default: false, null: false
  end

  add_index "users", ["approved"], name: "index_users_on_approved"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
